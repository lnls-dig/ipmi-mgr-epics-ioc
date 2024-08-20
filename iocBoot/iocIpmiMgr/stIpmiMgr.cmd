< envPaths
epicsEnvSet("TOP", "../..")
< IpmiMgr.config

####################################################

## Register all support components
dbLoadDatabase("$(TOP)/dbd/ipmiMgr.dbd",0,0)
ipmiMgr_registerRecordDeviceDriver pdbbase

var dbRecordsOnceOnly 1

## Initialize connection to MCH
drvAsynIPPortConfigure ("$(PORT)","$(IPADDR):623 udp",0,0,0)
mchInit("$(PORT)")

## Load record instances
dbLoadRecords("$(TOP)/db/asynRecord.db","P=${P}, R=${R}:asyn,PORT=$(PORT),ADDR=0,OMAX=80,IMAX=80")
dbLoadRecords("${TOP}/db/microtca_bpm_crate.db", "link=$(PORT),P=$(P),R=$(R):,dev=$(P)$(R),unit='',aliasprefix=''")

# < save_restore.cmd

iocInit

## Start any sequence programs
# No sequencer program
