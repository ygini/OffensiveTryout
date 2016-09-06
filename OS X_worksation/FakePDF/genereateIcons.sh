#!/bin/bash

#Based on https://gist.github.com/jessedc/837916#file-ios-icon-png-bash-script

src="$1"
dst=$(dirname "$src")/Icon

mkdir "$dst"


sips --resampleHeightWidthMax 1024 "$src" --out "$dst/Icon-tmp.png"
sips --padToHeightWidth 1024 1024 "$dst/Icon-tmp.png" --out "$dst/Icon-src.png"

src="$dst/Icon-src.png"

sips --resampleHeightWidthMax 16 "$src" --out "$dst/Icon-16.png"
sips --resampleHeightWidthMax 32 "$src" --out "$dst/Icon-16@2x.png"
sips --resampleHeightWidthMax 32 "$src" --out "$dst/Icon-32.png"
sips --resampleHeightWidthMax 64 "$src" --out "$dst/Icon-32@2x.png"
sips --resampleHeightWidthMax 128 "$src" --out "$dst/Icon-128.png"
sips --resampleHeightWidthMax 256 "$src" --out "$dst/Icon-128@2x.png"
sips --resampleHeightWidthMax 256 "$src" --out "$dst/Icon-256.png"
sips --resampleHeightWidthMax 512 "$src" --out "$dst/Icon-256@2x.png"
sips --resampleHeightWidthMax 512 "$src" --out "$dst/Icon-512.png"
sips --resampleHeightWidthMax 1024 "$src" --out "$dst/Icon-512@2x.png"

rm "$dst/Icon-src.png" "$dst/Icon-tmp.png"

exit 0
