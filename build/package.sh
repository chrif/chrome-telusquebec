#!/usr/bin/env sh

convert chrome-webstore/icon.png -resize 16x16  chrome-extension/icons/icon-16.png
convert chrome-webstore/icon.png -resize 48x48  chrome-extension/icons/icon-48.png
convert chrome-webstore/icon.png -resize 128x128  chrome-extension/icons/icon-128.png

cp LICENSE chrome-extension
zip -r chrome-extension chrome-extension -x \*\/.DS_Store
rm -f chrome-extension/LICENSE
