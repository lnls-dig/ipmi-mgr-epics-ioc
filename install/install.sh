#!/usr/bin/env bash
set -u
set -e

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

# Create INSTALL_DIR
mkdir -p "$INSTALL_DIR"

# Copy generated EPICS files
for dir in bin lib db dbd; do
    if [ -d "$TOP_DIR/$dir" ]; then
        cp -r "$TOP_DIR/$dir" "$INSTALL_DIR"
    fi
done

### *App files ###
APPS=($(ls $TOP_DIR | grep "App"))
for app in "${APPS[@]}"; do
    echo "Installing "$app "files"

    # Copy DB files
    for dir in Db; do
        mkdir -p "$INSTALL_DIR/$app"
        cp -r "$TOP_DIR/$app/$dir" "$INSTALL_DIR/$app"
    done
done

IOCBOOTS=($(ls $TOP_DIR/iocBoot | grep "ioc"))
for iocboot in "${IOCBOOTS[@]}"; do
    echo "Installing "$iocboot "files"
    # Copy iocBoot files
    for dir in $iocboot; do
        mkdir -p "$INSTALL_DIR/iocBoot"
        cp -r "$TOP_DIR/iocBoot/$dir" "$INSTALL_DIR/iocBoot"
    done
done

echo EPICS IOC installed in "$INSTALL_DIR"
