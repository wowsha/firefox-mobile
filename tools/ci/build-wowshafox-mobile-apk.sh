#!/usr/bin/env bash
set -euo pipefail

./mach build
(
  cd mobile/android/fenix
  ./gradlew --no-daemon :app:assembleRelease
)
