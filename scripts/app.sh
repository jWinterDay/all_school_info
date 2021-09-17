#!/bin/bash

ROOT=$PWD
APP_TYPE=$1

source scripts/constants.sh

function checking_flutter_version {
  cd $(dirname $(which flutter)) && cd ..

  flutter_version=$(cat version)
  printf "${ORANGE_COLOR}flutter version: ${GREEN_COLOR}$flutter_version${NO_COLOR}\n"
  if ! [[ $flutter_version == $FLUTTER_VERSION ]]; then
    printf "${RED_COLOR}wrong flutter version ($flutter_version). Version must be: $FLUTTER_VERSION${NO_COLOR}\n"
    exit 1;
  fi
  cd $ROOT
}

function creating_links {
    ln -sfn $ROOT/app_bundle/google_services/GoogleService-Info.plist $ROOT/ios/Runner/GoogleService-Info.plist # ios
    ln -sfn $ROOT/app_bundle/google_services/google-services.json $ROOT/android/app/google-services.json #android
}

# call functions
checking_flutter_version;
creating_links;