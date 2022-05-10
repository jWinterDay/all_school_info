#!/bin/bash

ROOT=$PWD
APP_TYPE=$1 # debug mock production_services

source scripts/constants.sh



if [[ "$APP_TYPE" == "" ]]; then
    APP_TYPE="mock";
fi

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
    # debug, mock
    if [[ "$APP_TYPE" == "debug" ]] || [[ "$APP_TYPE" == "mock" ]]; then
        ln -sfn "$ROOT/app_bundle/google_services/GoogleService-Info.plist" "$ROOT/ios/Runner/" # ios
        ln -sfn "$ROOT/app_bundle/google_services/google-services.json" "$ROOT/android/app/" # android
    fi

    # production_services
    if [[ "$APP_TYPE" == "production_services" ]]; then
        printf "${RED_COLOR}PRODUCTION FB SERVICES${NO_COLOR}\n"
        # folder under with production google service settings
        cd ../env/all_school_info/
        ENV_PATH=$(pwd)

        ln -sfn "$ENV_PATH/GoogleService-Info.plist" "$ROOT/ios/Runner/GoogleService-Info.plist" # ios
        ln -sfn "$ENV_PATH/google-services.json" "$ROOT/android/app/google-services.json"  # android

        cd $ROOT

        pwd
    fi
}

# call functions
# checking_flutter_version;
creating_links;