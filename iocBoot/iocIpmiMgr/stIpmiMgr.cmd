#!../../bin/linux-x86_64/ipmiMgr

## You may have to change IpmiMgr to something else
## everywhere it appears in this file

< envPaths

cd "${TOP}"

epicsEnvSet("MCH_LINK", "mch-test")

## Register all support components
dbLoadDatabase "dbd/ipmiMgr.dbd"
ipmiMgr_registerRecordDeviceDriver pdbbase

## Initialize connection to MCH
drvAsynIPPortConfigure ("$(MCH_LINK)","$(IPADDR):623 udp",0,0,0)
mchInit("$(MCH_LINK)")

## Load record instances
dbLoadRecords("db/microtca_bpm_crate.db", "link=$(MCH_LINK), P=$(P), R=$(R)")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=rootHost"
