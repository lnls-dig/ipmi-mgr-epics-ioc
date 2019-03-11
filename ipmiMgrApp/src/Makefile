TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = ipmiMgr
# ipmiMgr.dbd will be created and installed
DBD += ipmiMgr.dbd

# ipmiMgr.dbd will be made up from these files:
ipmiMgr_DBD += base.dbd

# Include dbd files from all support applications:
#ipmiMgr_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#ipmiMgr_LIBS += xxx

# ipmiMgr_registerRecordDeviceDriver.cpp derives from ipmiMgr.dbd
ipmiMgr_SRCS += ipmiMgr_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
ipmiMgr_SRCS_DEFAULT += ipmiMgrMain.cpp
ipmiMgr_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#ipmiMgr_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
ipmiMgr_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

