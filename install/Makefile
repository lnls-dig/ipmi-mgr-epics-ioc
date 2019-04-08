TOP = ..
include $(TOP)/configure/CONFIG

ioc_name := $(shell basename $(realpath ${TOP}))

SCRIPTS_FOLDER = ../scripts
IOC_NAME ?= ${ioc_name}
INSTALL_PREFIX ?= /opt/epics/startup/ioc
export IOC_NAME
export INSTALL_PREFIX

install: scripts_install
	$(TOP)/install/install.sh ${INSTALL_PREFIX}/${IOC_NAME} $(TOP)

uninstall: scripts_uninstall
	$(TOP)/install/uninstall.sh ${INSTALL_PREFIX}/${IOC_NAME} $(TOP)

scripts_install:
	$(MAKE) -C ${SCRIPTS_FOLDER} install

scripts_uninstall:
	$(MAKE) -C ${SCRIPTS_FOLDER} uninstall

realuninstall: uninstall

clean:

realclean: clean

distclean: realclean realuninstall

mrproper: clean

