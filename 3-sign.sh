#!/bin/bash
# Step 3: Sign APK and prepare release
source common.sh
set_keys
export VERSION=$(grep -m1 -o '[0-9]\+\(\.[0-9]\+\)\{3\}' vanadium/args.gn)
cd chromium/src

export PATH=$PWD/third_party/jdk/current/bin/:$PATH
export ANDROID_HOME=$PWD/third_party/android_sdk/public
mkdir -p out/Default/apks/release
sign_apk $(find out/Default/apks -name 'Chrome*.apk') out/Default/apks/release/Sneptuob-$VERSION.apk

echo "=== Signing complete ==="
echo "APK: out/Default/apks/release/Sneptuob-$VERSION.apk"
