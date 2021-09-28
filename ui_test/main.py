from skimage import metrics # measure

import argparse
import imutils
import cv2

import pathlib
import os

# construct the argument parse and parse the arguments
ap = argparse.ArgumentParser()
ap.add_argument("-f", "--first", required=True, help="first input image")
ap.add_argument("-s", "--second", required=True, help="second")
ap.add_argument("-n", "--name", required=True, help="name")
ap.add_argument("-tbh", "--topbarheight", required=False, help="top bar height to clearing")
ap.add_argument("-o", "--output", required=False, help="output directory")
ap.add_argument("-mode", "--mode", required=False, help="details mode")
ap.add_argument("-activeheight", "--activeheight", required=False, help="active height from top. the height below this param will be cut")
ap.add_argument("-activewidth", "--activewidth", required=False, help="active width from top. the height below this param will be cut")

args = vars(ap.parse_args())

#----------------------resize
# load the two input images
imageA = cv2.imread(args["first"])
imageB = cv2.imread(args["second"])



# print("first arg: ", args["first"], ", imageA: ", imageA)
# print("second arg: ", args["second"], ", imageB: ", imageB)

# if imageA == None:
#   print("first image is None")
#   exit
# if imageB == None:
#   print("second image is None")
#   exit

width1 = int(imageA.shape[1])
height1 = int(imageA.shape[0])
print("first image. w: ", width1, ", h: ", height1)

width2 = int(imageB.shape[1])
height2 = int(imageB.shape[0])
print("second image. w: ", width2, ", h: ", height2)

# active height
activeheight = args["activeheight"]
if args["activeheight"] != None:
  ah = int(args["activeheight"])
  imageA = imageA[0:ah, 0:width1]
  imageB = imageB[0:ah, 0:width2]

# active width
if args["activewidth"] != None:
  h1 = int(imageA.shape[0])
  h2 = int(imageB.shape[0])
  aw = int(args["activewidth"])
  imageA = imageA[0:h1, 0:aw]
  imageB = imageB[0:h2, 0:aw]


# erase top bar
if args["topbarheight"] != None:
  topbarheight = int(args["topbarheight"])
  cv2.rectangle(imageA, (0, 0), (width1, topbarheight), (255, 255, 255), topbarheight)
  cv2.rectangle(imageB, (0, 0), (width1, topbarheight), (255, 255, 255), topbarheight)
#

# convert the images to grayscale
grayA = cv2.cvtColor(imageA, cv2.COLOR_BGR2GRAY)
grayB = cv2.cvtColor(imageB, cv2.COLOR_BGR2GRAY)

#------------
# compute the Structural Similarity Index (SSIM) between the two
# images, ensuring that the difference image is returned
(score, diff) = metrics.structural_similarity(grayA, grayB, full=True)
diff = (diff * 255).astype("uint8")
print("SSIM: {}".format(score))

#------------
# threshold the difference image, followed by finding contours to
# obtain the regions of the two input images that differ
thresh = cv2.threshold(diff, 0, 255, cv2.THRESH_BINARY_INV | cv2.THRESH_OTSU)[1]
cnts = cv2.findContours(thresh.copy(), cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
cnts = imutils.grab_contours(cnts)

#-----------
# loop over the contours
mode = args["mode"]
for c in cnts:
  # compute the bounding box of the contour and then draw the
  # bounding box on both input images to represent where the two
  # images differ
  (x, y, w, h) = cv2.boundingRect(c)

  if mode == "rect":
    cv2.rectangle(imageA, (x, y), (x + w, y + h), (0, 0, 255), 2)

  if mode == "full":
    cv2.line(imageA, (0, y + h), (width1, y + h), (0, 255, 0), thickness=1)

  if mode == "rect":
    cv2.rectangle(imageB, (x, y), (x + w, y + h), (0, 0, 255), 2)

  if mode == "full":
    cv2.line(imageB, (0, y + h), (width1, y + h), (0, 255, 0), thickness=1)
  
  
  
# show the output images
# cv2.imshow("Original", imageA)
# cv2.imshow("Modified", imageB)
# cv2.imshow("Diff", diff)
# cv2.imshow("Thresh", thresh)

# cv2.imwrite('original.png', imageA)
# cv2.imwrite('modified.png', imageB)
# cv2.imwrite('diff.png', diff)
# cv2.imwrite('thresh.png', thresh)

# def concat_vh(list_2d): 
#     return cv2.vconcat([cv2.hconcat(list_h)
#                         for list_h in list_2d])

# img_tile = concat_vh([[imageA, imageB], [diff, thresh]])

h_img_0 = cv2.hconcat([imageA, imageB]) #, diff, thresh])
# h_img_1 = cv2.hconcat([diff, thresh])

#--------works. write
rootFolder = pathlib.Path(__file__).parent.parent.absolute()

outputArg = args['output']
if outputArg == None:
  outputArg = '/test_driver/images/diff'

outputDir = str(rootFolder) + str(outputArg)
pathlib.Path(str(outputDir)).mkdir(parents=True, exist_ok=True)

diffImageName = args['name']
cv2.imwrite(str(outputDir) + '/' + str(diffImageName), h_img_0)

# cv2.imshow('Original -> Diff', h_img_0)


# cv2.waitKey(0)
# cv2.destroyAllWindows()









