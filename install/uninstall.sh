#!/usr/bin/env bash
set -e
set -u

INSTALL_DIR=$1
TOP_DIR=$2

function usage {
    echo "Usage: $0 <install_directory> <top IOC location>"
}

if [ -z "$INSTALL_DIR" ]; then
    echo "\"INSTALL_DIR\" variable unset."
    usage
    exit 1
fi

if [ -z "$TOP_DIR" ]; then
    echo "\"TOP_DIR\" variable unset."
    usage
    exit 1
fi

# Remove everything from INSTALL_DIR
rm -rf "$INSTALL_DIR"

echo EPICS IOC uninstalled from "$INSTALL_DIR"
