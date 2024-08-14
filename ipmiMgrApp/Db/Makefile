TOP=../..
include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE

#----------------------------------------------------
#  Optimization of db files using dbst (DEFAULT: NO)
#DB_OPT = YES

#----------------------------------------------------
# Create and install (or just install) into <top>/db
# databases, templates, substitutions like this

#Base templates
DB += sensor_ai_alias.db
DB += fru_common_alias.db
DB += fru_cu_common_alias.db
DB += system_common_alias.db
DB += power_mngr.db

#Modules
DB += cooling_unit.db
DB += power_module.db
DB += rtm_cpu.db
DB += mch_base.db
DB += mch_clk_switch.db
DB += mch_pci_hub.db
DB += mch_nat.db
DB += afcv3.db
DB += afcv4.db
DB += rtm_8sfp.db
DB += rtm_lamp.db

#System
DB += microtca_bpm_crate.db

#----------------------------------------------------
# If <anyname>.db template is not named <anyname>*.template add
# <anyname>_template = <templatename>

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

