# python3 -m pip install scikit-image
# python3 -m pip install opencv-python

imgName=$1

echo "compare_screenshots script. img name = $imgName"

# screeshot TODO
if [[ $imgName == "" ]]; then
  echo "choose image file name"
  exit 1
fi;


# imgName="registration_choose_type_component.png"
imgFolder="$(pwd)/ui_test/images"
path="$imgFolder/actual/test/$imgName"
echo "path > $path"

# take screenshot
mkdir -p "$imgFolder/actual/test/"
xcrun simctl io booted screenshot $path

# compare
 # h: 1334, w: 750
python3 ui_test/main.py \
  --first "$imgFolder/original/$imgName" \
  --second "$imgFolder/actual/test/$imgName" \
  --name $imgName \
  --output "/ui_test/images/diff" \
  --mode rect \
  --activeheight 1334 \
  --activewidth 750
  # --topbarheight 20
