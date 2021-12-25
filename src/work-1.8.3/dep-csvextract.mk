# File: /home/kube5/seagull_new/Seagull/seagull/trunk/src/work-1.8.3/dep-csvextract.mk

include Makefile-common.mk
include $(WORK_DIR)/compiler.mk
# Target objects
TARGET_OBJ = \
    $(WORK_DIR)/csvextract.o


# Include specific paths
MODULE_PATH = -I./tool-csvextract 

# General entry
FINAL_TARGET=$(BUILD_DIR)/csvextract
$(FINAL_TARGET): $(TARGET_OBJ)
	@echo "[Linking $(FINAL_TARGET)]"
	@$(LD_SIMPLE_EXE) $(LD_FLAGS_SIMPLE_EXE) $(TARGET_OBJ) $(LD_PATH_SIMPLE_EXE) $(LD_LIBS_SIMPLE_EXE) -o $(FINAL_TARGET)
	

# Header files rules
# Object file rules
$(WORK_DIR)/csvextract.o: tool-csvextract/csvextract.c 
	@echo "[Compiling tool-csvextract/csvextract.c]"
	@$(CC_SIMPLE_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_SIMPLE_EXE) $(CC_INCLUDE_SIMPLE_EXE) -c tool-csvextract/csvextract.c -o $(WORK_DIR)/csvextract.o

