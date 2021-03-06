< envPaths
epicsEnvSet("TOP", "../..")
< IpmiMgr.config

####################################################

## Register all support components
dbLoadDatabase("$(TOP)/dbd/ipmiMgr.dbd",0,0)
ipmiMgr_registerRecordDeviceDriver pdbbase

## Initialize connection to MCH
drvAsynIPPortConfigure ("$(PORT)","$(IPADDR):623 udp",0,0,0)
mchInit("$(PORT)")

## Load record instances
dbLoadRecords("$(ASYN)/db/asynRecord.db","P=${P}, R=${R}asyn,PORT=$(PORT),ADDR=0,OMAX=80,IMAX=80")
dbLoadRecords("${TOP}/db/microtca_bpm_crate.db", "link=$(PORT),P=$(P),R=$(R)")

# < save_restore.cmd

iocInit

## Start any sequence programs
# No sequencer program
