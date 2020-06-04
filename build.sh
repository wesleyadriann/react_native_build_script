#!/bin/sh

#
# chmod +x ./build.sh
#

echo " 
*---------------------------*
*---- Build android apk ----*
*---------------------------*
"
echo "\n*----RUN: watchman\n"
watchman watch-del-all
echo "\n*----RUN: rm tmp dir\n"
rm -rf $TMPDIR/react-*
echo "\n*----RUN: yarn lock\n"
rm yarn.lock****
echo "\n*----RUN: rm bundle\n"
rm android/app/src/main/assets/index.android.bundle
echo "\n*----RUN: rm bundle.meta\n"
rm android/app/src/main/assets/index.android.bundle.meta
echo "\n*----RUN: cache clean\n"
yarn cache clean
echo "\n*----RUN: react bundle\n"
react-native bundle --platform android --dev false --entry-file index.js --bundle-output android/app/src/main/assets/index.android.bundle
cd ./android && \
echo "\n*----RUN: gradlew clean\n" && \
./gradlew clean --stacktrace && \
echo "\n*----RUN: gradlew assemble\n" && \
./gradlew app:assembleRelease --stacktrace