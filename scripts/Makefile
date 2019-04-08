TOP = ..
include $(TOP)/configure/CONFIG

CMDSEP = ;

SCRIPTS_PREFIX ?=
PWD = $(shell pwd)
SED = sed

# Prefixes
IOC_NAME ?=
INSTALL_PREFIX ?=
BIN_FILES_PREFIX ?= /usr/local

# OS information
SERVICE_NAME = $(shell basename $(realpath ${TOP}))
INIT_SYSTEM := $(shell ./get-init-system.sh)
SCRIPTS_FULL_NAME := $(shell cd $(INIT_SYSTEM) && find . -type f \
	\( -iname "*" ! -iname "*.service.in" \))
SCRIPTS_SERVICE_IN_FULL_NAME := $(shell cd $(INIT_SYSTEM) && find . -type f \
	\( -iname "*.service.in" \))
# Strip .in suffix
SCRIPTS_SERVICE_FULL_NAME := $(SCRIPTS_SERVICE_IN_FULL_NAME:%.in=%)

# Strip off a leading ./
SCRIPTS=$(SCRIPTS_FULL_NAME:./%=%)
SCRIPTS_SERVICE_IN=$(SCRIPTS_SERVICE_IN_FULL_NAME:./%=%)
SCRIPTS_SERVICE=$(SCRIPTS_SERVICE_FULL_NAME:./%=%)

# Binary files
BIN_FILES_FULL_NAME := $(shell cd ${INIT_SYSTEM} && find bin -type f)
# Strip off a leading ./
BIN_FILES=$(BIN_FILES_FULL_NAME:./%=%)

.PHONY: all clean mrproper install uninstall

all:

install: scripts_in_gen
	$(foreach script,$(SCRIPTS),mkdir -p $(dir ${SCRIPTS_PREFIX}/$(script)) $(CMDSEP))
	$(foreach script,$(SCRIPTS),cp --preserve=mode $(INIT_SYSTEM)/$(script) ${SCRIPTS_PREFIX}/$(script) $(CMDSEP))
	$(foreach bin,$(BIN_FILES),cp --preserve=mode ${INIT_SYSTEM}/$(bin) ${BIN_FILES_PREFIX}/$(bin) $(CMDSEP))

uninstall: scripts_in_degen
	-$(foreach bin,$(BIN_FILES),rm -f ${BIN_FILES_PREFIX}/$(bin) $(CMDSEP))
	$(foreach script,$(SCRIPTS),rm -f ${SCRIPTS_PREFIX}/$(script) $(CMDSEP))

scripts_in_gen:
	$(foreach script,$(SCRIPTS_SERVICE_IN), \
		sed -e "\
			s#<INSTALL_PREFIX>#$(INSTALL_PREFIX)#g; \
			s#<IOC_NAME>#$(IOC_NAME)#g; \
			" $(PWD)/$(INIT_SYSTEM)/$(script) > $(PWD)/$(INIT_SYSTEM)/$(script:%.in=%) \
		$(CMDSEP) \
	)

scripts_in_degen:
	$(foreach script,$(SCRIPTS_SERVICE_IN), \
		rm -f $(PWD)/$(INIT_SYSTEM)/$(script:%.in=%) \
		$(CMDSEP) \
	)

realuninstall: uninstall

clean:

realclean: clean

distclean: realclean realuninstall

mrproper: clean

