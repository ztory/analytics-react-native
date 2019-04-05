#!/bin/bash

set -ex

pushd project
    yarn react-native link
popd

echo 'Launching Detox'
yarn detox build --configuration android

echo 'Before exit(2)'
exit 2
echo 'After exit(2)'

# Android E2E tests are not working yet
# yarn detox test --configuration android
