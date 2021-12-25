# File: /home/kube5/seagull_new/Seagull/seagull/trunk/src/work-1.8.3/project.mk
Debug Mode: off

# dependance files generation
$(WORK_DIR)/dep-seagull.mk:
	@echo "[Generating file dep-seagull.mk]"
	@./make-dep.ksh $(WORK_DIR)/dep-seagull.mk seagull exe common generator-common generator-core generator-model protocol-frame protocol-data protocol-binary protocol-binary-body-with-separator protocol-tlv protocol-binary-body-not-interpreted protocol-external protocol-text protocol-stats scenario-stats data-log transport-frame generator-traffic generator-ext-AgnerLib generator-scenario external-data xml-parser generator-stats parser-frame filter-frame command-actions generator-control

all_seagull: $(WORK_DIR)/dep-seagull.mk
	@echo "[Generating file seagull]"
	@make -f $(WORK_DIR)/dep-seagull.mk WORK_DIR=$(WORK_DIR) BUILD_DIR=$(BUILD_DIR) TOOL_NAME=$(TOOL_NAME) TOOL_VERSION=$(TOOL_VERSION) DEP_TARGET=seagull

$(WORK_DIR)/dep-libtrans_ip.so.mk:
	@echo "[Generating file dep-libtrans_ip.so.mk]"
	@./make-dep.ksh $(WORK_DIR)/dep-libtrans_ip.so.mk libtrans_ip.so lib common protocol-frame transport-frame library-trans-ip

all_libtrans_ip.so: $(WORK_DIR)/dep-libtrans_ip.so.mk
	@echo "[Generating file libtrans_ip.so]"
	@make -f $(WORK_DIR)/dep-libtrans_ip.so.mk WORK_DIR=$(WORK_DIR) BUILD_DIR=$(BUILD_DIR) TOOL_NAME=$(TOOL_NAME) TOOL_VERSION=$(TOOL_VERSION) DEP_TARGET=libtrans_ip.so

$(WORK_DIR)/dep-csvextract.mk:
	@echo "[Generating file dep-csvextract.mk]"
	@./make-dep.ksh $(WORK_DIR)/dep-csvextract.mk csvextract simple_exe tool-csvextract

all_csvextract: $(WORK_DIR)/dep-csvextract.mk
	@echo "[Generating file csvextract]"
	@make -f $(WORK_DIR)/dep-csvextract.mk WORK_DIR=$(WORK_DIR) BUILD_DIR=$(BUILD_DIR) TOOL_NAME=$(TOOL_NAME) TOOL_VERSION=$(TOOL_VERSION) DEP_TARGET=csvextract

$(WORK_DIR)/dep-csvsplit.mk:
	@echo "[Generating file dep-csvsplit.mk]"
	@./make-dep.ksh $(WORK_DIR)/dep-csvsplit.mk csvsplit simple_exe tool-csvsplit

all_csvsplit: $(WORK_DIR)/dep-csvsplit.mk
	@echo "[Generating file csvsplit]"
	@make -f $(WORK_DIR)/dep-csvsplit.mk WORK_DIR=$(WORK_DIR) BUILD_DIR=$(BUILD_DIR) TOOL_NAME=$(TOOL_NAME) TOOL_VERSION=$(TOOL_VERSION) DEP_TARGET=csvsplit

$(WORK_DIR)/dep-libparser_xml.so.mk:
	@echo "[Generating file dep-libparser_xml.so.mk]"
	@./make-dep.ksh $(WORK_DIR)/dep-libparser_xml.so.mk libparser_xml.so lib common parser-frame filter-frame protocol-frame library-parser-xml

all_libparser_xml.so: $(WORK_DIR)/dep-libparser_xml.so.mk
	@echo "[Generating file libparser_xml.so]"
	@make -f $(WORK_DIR)/dep-libparser_xml.so.mk WORK_DIR=$(WORK_DIR) BUILD_DIR=$(BUILD_DIR) TOOL_NAME=$(TOOL_NAME) TOOL_VERSION=$(TOOL_VERSION) DEP_TARGET=libparser_xml.so

$(WORK_DIR)/dep-libparser_h248.so.mk:
	@echo "[Generating file dep-libparser_h248.so.mk]"
	@./make-dep.ksh $(WORK_DIR)/dep-libparser_h248.so.mk libparser_h248.so lib common parser-frame filter-frame protocol-frame library-parser-h248

all_libparser_h248.so: $(WORK_DIR)/dep-libparser_h248.so.mk
	@echo "[Generating file libparser_h248.so]"
	@make -f $(WORK_DIR)/dep-libparser_h248.so.mk WORK_DIR=$(WORK_DIR) BUILD_DIR=$(BUILD_DIR) TOOL_NAME=$(TOOL_NAME) TOOL_VERSION=$(TOOL_VERSION) DEP_TARGET=libparser_h248.so

$(WORK_DIR)/dep-libparser_msrp.so.mk:
	@echo "[Generating file dep-libparser_msrp.so.mk]"
	@./make-dep.ksh $(WORK_DIR)/dep-libparser_msrp.so.mk libparser_msrp.so lib common parser-frame filter-frame protocol-frame library-parser-msrp

all_libparser_msrp.so: $(WORK_DIR)/dep-libparser_msrp.so.mk
	@echo "[Generating file libparser_msrp.so]"
	@make -f $(WORK_DIR)/dep-libparser_msrp.so.mk WORK_DIR=$(WORK_DIR) BUILD_DIR=$(BUILD_DIR) TOOL_NAME=$(TOOL_NAME) TOOL_VERSION=$(TOOL_VERSION) DEP_TARGET=libparser_msrp.so

$(WORK_DIR)/dep-lib_generalmethods.so.mk:
	@echo "[Generating file dep-lib_generalmethods.so.mk]"
	@./make-dep.ksh $(WORK_DIR)/dep-lib_generalmethods.so.mk lib_generalmethods.so lib common protocol-frame library-general-methods

all_lib_generalmethods.so: $(WORK_DIR)/dep-lib_generalmethods.so.mk
	@echo "[Generating file lib_generalmethods.so]"
	@make -f $(WORK_DIR)/dep-lib_generalmethods.so.mk WORK_DIR=$(WORK_DIR) BUILD_DIR=$(BUILD_DIR) TOOL_NAME=$(TOOL_NAME) TOOL_VERSION=$(TOOL_VERSION) DEP_TARGET=lib_generalmethods.so


# target to build
all: all_seagull all_libtrans_ip.so all_csvextract all_csvsplit all_libparser_xml.so all_libparser_h248.so all_libparser_msrp.so all_lib_generalmethods.so

# bin distribution to build
dist: all
	@./make-dist.ksh $(BUILD_DIR) $(WORK_DIR)
