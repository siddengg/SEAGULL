# File: /home/kube5/seagull_new/Seagull/seagull/trunk/src/work-1.8.3/dep-libparser_xml.so.mk

include Makefile-common.mk
include $(WORK_DIR)/compiler.mk
# Target objects
TARGET_OBJ = \
    $(WORK_DIR)/integer_t.o \
    $(WORK_DIR)/C_RegExp.o \
    $(WORK_DIR)/parser.o


# Include specific paths
MODULE_PATH = -I./common -I./parser-frame -I./filter-frame -I./protocol-frame -I./library-parser-xml 

# General entry
FINAL_TARGET=$(BUILD_DIR)/libparser_xml.so
$(FINAL_TARGET): $(TARGET_OBJ)
	@echo "[Linking $(FINAL_TARGET)]"
	@$(LD_LIB) $(LD_FLAGS_LIB) $(TARGET_OBJ) $(LD_PATH_LIB) $(LD_LIBS_LIB) -o $(FINAL_TARGET)
	

# Header files rules
common/C_RegExp.hpp:  common/types_t.hpp

common/Utils.hpp:  common/iostream_t.hpp

common/integer_t.hpp:  common/iostream_t.hpp

common/iostream_t.hpp: 

common/string_t.hpp: 

library-parser-xml/parser.hpp:  protocol-frame/C_ProtocolFrame.hpp

# Object file rules
$(WORK_DIR)/integer_t.o: common/integer_t.cpp common/integer_t.hpp
	@echo "[Compiling common/integer_t.cpp]"
	@$(CC_LIB) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_LIB) $(CC_INCLUDE_LIB) -c common/integer_t.cpp -o $(WORK_DIR)/integer_t.o

$(WORK_DIR)/C_RegExp.o: common/C_RegExp.cpp common/C_RegExp.hpp common/string_t.hpp common/Utils.hpp
	@echo "[Compiling common/C_RegExp.cpp]"
	@$(CC_LIB) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_LIB) $(CC_INCLUDE_LIB) -c common/C_RegExp.cpp -o $(WORK_DIR)/C_RegExp.o

$(WORK_DIR)/parser.o: library-parser-xml/parser.cpp library-parser-xml/parser.hpp common/iostream_t.hpp common/string_t.hpp common/Utils.hpp
	@echo "[Compiling library-parser-xml/parser.cpp]"
	@$(CC_LIB) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_LIB) $(CC_INCLUDE_LIB) -c library-parser-xml/parser.cpp -o $(WORK_DIR)/parser.o

