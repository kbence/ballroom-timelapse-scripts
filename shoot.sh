#!/usr/bin/env bash

set -e

ROOT=$(cd "$(dirname ${BASH_SOURCE[0]:$0})"; pwd)
. "$ROOT/config.sh"

FILENAME=/tmp/ballroom-images/"$(date +%Y%m%d)/$(date +%Y%m%d_%H%M).jpg"

[[ -d $OUTPUT_DIR ]] || mkdir -p "$(OUTPUT_DIR)"
raspistill -o "$FILENAME"
