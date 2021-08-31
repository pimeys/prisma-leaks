#!/usr/bin/env bash
set -euo pipefail

for i in {1..1000}
do
    cp copy.test.js copy$i.test.js
done
