#!/usr/bin/env bash

ROOT=$(cd "$(dirname ${BASH_SOURCE[0]})"; pwd)
. "$ROOT/config.sh"

"$ROOT"/dropup/dropbox_uploader.sh -q upload "$OUTPUT_DIR" /
rm -rf "$OUTPUT_DIR"/*
