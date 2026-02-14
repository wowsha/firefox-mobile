#!/usr/bin/env bash
set -euo pipefail

./mach build faster
pushd mobile/android/fenix > /dev/null
./gradlew --no-daemon :app:assembleRelease
popd > /dev/null
