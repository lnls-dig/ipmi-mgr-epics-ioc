#!/bin/sh

IOC_NAME="ipmiMgr"

IOC_BOOT_DIR="$(dirname "$0")"
IOC_BIN_DIR="$IOC_BOOT_DIR/../../bin"

if [ -n "$EPICS_HOST_ARCH" ]; then
	IOC_BIN="../../bin/$EPICS_HOST_ARCH/$IOC_NAME"
elif [ "$(ls "$IOC_BIN_DIR" | wc -l)" -eq 1 ]; then
	HOST_ARCH_GUESS="$(ls "$IOC_BIN_DIR")"
	IOC_BIN="../../bin/$HOST_ARCH_GUESS/$IOC_NAME"
else
	if [ -z "$(ls "$IOC_BIN_DIR")" ]; then
		echo "No IOC binaries found Did you run make install in the root directory?" >&2
	else
		echo 'Multiple IOC binaries found. Please set the $EPICS_HOST_ARCH environment variable with the appropriate value.' >&2
		echo "    Available options: $(ls "$IOC_BIN_DIR")" >&2
	fi

	exit 1
fi

