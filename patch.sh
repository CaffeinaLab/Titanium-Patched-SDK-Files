#!/bin/sh

CURPATH=$(dirname $0)
SDKPATH=~/Library/Application\ Support/Titanium/mobilesdk/osx

for s in $(ls "$CURPATH/sdk"); do
	if [ -d "$SDKPATH/$s" ]; then
		echo "SDK $s patched!"
		cp -R "$CURPATH/sdk/$s" "$SDKPATH/$s"
	else
		echo "SDK $s is not installed"
	fi
done
