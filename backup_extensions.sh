#!/bin/bash

SRC_DIR="$HOME/.config/{chrome-name}/Default/Extensions"
DEST_DIR="$HOME/Desktop/chrome_extensions_backup"

mkdir -p "$DEST_DIR"

for EXT_ID in "$SRC_DIR"/*; do
    [ -d "$EXT_ID" ] || continue
    LATEST_VERSION=$(ls "$EXT_ID" | sort -V | tail -n 1)
    cp -r "$EXT_ID/$LATEST_VERSION" "$DEST_DIR/$(basename "$EXT_ID")"
done

echo "✅ All extensions copied to: $DEST_DIR"

