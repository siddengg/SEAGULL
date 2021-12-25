# File: /home/kube5/seagull_new/Seagull/seagull/trunk/src/work-1.8.3/dep-csvsplit.mk

include Makefile-common.mk
include $(WORK_DIR)/compiler.mk
# Target objects
TARGET_OBJ = \
    $(WORK_DIR)/csvsplit.o


# Include specific paths
MODULE_PATH = -I./tool-csvsplit 

# General entry
FINAL_TARGET=$(BUILD_DIR)/csvsplit
$(FINAL_TARGET): $(TARGET_OBJ)
	@echo "[Linking $(FINAL_TARGET)]"
	@$(LD_SIMPLE_EXE) $(LD_FLAGS_SIMPLE_EXE) $(TARGET_OBJ) $(LD_PATH_SIMPLE_EXE) $(LD_LIBS_SIMPLE_EXE) -o $(FINAL_TARGET)
	

# Header files rules
# Object file rules
$(WORK_DIR)/csvsplit.o: tool-csvsplit/csvsplit.c 
	@echo "[Compiling tool-csvsplit/csvsplit.c]"
	@$(CC_SIMPLE_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_SIMPLE_EXE) $(CC_INCLUDE_SIMPLE_EXE) -c tool-csvsplit/csvsplit.c -o $(WORK_DIR)/csvsplit.o

