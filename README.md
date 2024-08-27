# EPICS IOC for uTCA crate management

[![Continuous Integration
Status](https://github.com/lnls-dig/ipmi-mgr-epics-ioc/actions/workflows/build.yml/badge.svg)](https://github.com/lnls-dig/ipmi-mgr-epics-ioc/actions)

This repository contains the EPICS Input/Output Controller (IOC) used at LNLS
for managing uTCA crates, based on
[ipmiComm](https://github.com/slac-epics-modules/ipmiComm) support module.
The available PVs are listed [here](PVList.md).

## Running the IOC

You can use the following command to run it in the background using the default
start-up script from
[epics-in-docker](https://github.com/cnpem/epics-in-docker). First, define the
variables `IPADDR` with the MCH Hostname and `AREA` with its location e.g.
`IPADDR=IA-01RaBPM-Co-CrateCtrl AREA=IA-01RaBPM`

```bash
IPADDR={MCH_HOSTNAME} AREA={MCH_LOCATION} docker compose up -d
```

## Building the IOC image

You can build the IOC with the following command:

```bash
TAG=latest docker compose build
```
