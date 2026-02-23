#!/bin/bash
# Step 2: Compile Chromium
export VERSION=$(grep -m1 -o '[0-9]\+\(\.[0-9]\+\)\{3\}' vanadium/args.gn)
export DEBIAN_FRONTEND=noninteractive
export PATH="$PWD/depot_tools:$PATH"
cd chromium/src

# Resume build - autoninja handles incremental builds
autoninja -C out/Default chrome_public_apk

echo "=== Compilation complete ==="
