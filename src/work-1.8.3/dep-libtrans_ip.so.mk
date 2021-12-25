# File: /home/kube5/seagull_new/Seagull/seagull/trunk/src/work-1.8.3/dep-libtrans_ip.so.mk

include Makefile-common.mk
include $(WORK_DIR)/compiler.mk
# Target objects
TARGET_OBJ = \
    $(WORK_DIR)/integer_t.o \
    $(WORK_DIR)/C_RegExp.o \
    $(WORK_DIR)/C_TransIP.o \
    $(WORK_DIR)/C_Socket.o \
    $(WORK_DIR)/C_DataDecode.o \
    $(WORK_DIR)/S_IpAddr.o


# Include specific paths
MODULE_PATH = -I./common -I./protocol-frame -I./transport-frame -I./library-trans-ip 

# General entry
FINAL_TARGET=$(BUILD_DIR)/libtrans_ip.so
$(FINAL_TARGET): $(TARGET_OBJ)
	@echo "[Linking $(FINAL_TARGET)]"
	@$(LD_LIB) $(LD_FLAGS_LIB) $(TARGET_OBJ) $(LD_PATH_LIB) $(LD_LIBS_LIB) -o $(FINAL_TARGET)
	

# Header files rules
common/C_RegExp.hpp:  common/types_t.hpp

common/Utils.hpp:  common/iostream_t.hpp

common/integer_t.hpp:  common/iostream_t.hpp

common/iostream_t.hpp: 

common/string_t.hpp: 

library-trans-ip/C_DataDecode.hpp:  common/list_t.hpp common/map_t.hpp

library-trans-ip/C_Socket.hpp:  common/list_t.hpp common/map_t.hpp library-trans-ip/S_IpAddr.hpp transport-frame/C_Transport.hpp transport-frame/C_TransportEvent.hpp library-trans-ip/C_DataDecode.hpp protocol-frame/C_ProtocolBinaryFrame.hpp transport-frame/ReceiveMsgContext.h

library-trans-ip/C_TransIP.hpp:  common/list_t.hpp transport-frame/C_Transport.hpp library-trans-ip/S_IpAddr.hpp library-trans-ip/C_Socket.hpp protocol-frame/C_ProtocolBinaryFrame.hpp

library-trans-ip/S_IpAddr.hpp:  library-trans-ip/socket_t.hpp common/list_t.hpp common/map_t.hpp

# Object file rules
$(WORK_DIR)/integer_t.o: common/integer_t.cpp common/integer_t.hpp
	@echo "[Compiling common/integer_t.cpp]"
	@$(CC_LIB) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_LIB) $(CC_INCLUDE_LIB) -c common/integer_t.cpp -o $(WORK_DIR)/integer_t.o

$(WORK_DIR)/C_RegExp.o: common/C_RegExp.cpp common/C_RegExp.hpp common/string_t.hpp common/Utils.hpp
	@echo "[Compiling common/C_RegExp.cpp]"
	@$(CC_LIB) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_LIB) $(CC_INCLUDE_LIB) -c common/C_RegExp.cpp -o $(WORK_DIR)/C_RegExp.o

$(WORK_DIR)/C_TransIP.o: library-trans-ip/C_TransIP.cpp library-trans-ip/C_TransIP.hpp common/Utils.hpp common/string_t.hpp common/iostream_t.hpp common/integer_t.hpp
	@echo "[Compiling library-trans-ip/C_TransIP.cpp]"
	@$(CC_LIB) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_LIB) $(CC_INCLUDE_LIB) -c library-trans-ip/C_TransIP.cpp -o $(WORK_DIR)/C_TransIP.o

$(WORK_DIR)/C_Socket.o: library-trans-ip/C_Socket.cpp library-trans-ip/C_Socket.hpp common/Utils.hpp common/iostream_t.hpp
	@echo "[Compiling library-trans-ip/C_Socket.cpp]"
	@$(CC_LIB) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_LIB) $(CC_INCLUDE_LIB) -c library-trans-ip/C_Socket.cpp -o $(WORK_DIR)/C_Socket.o

$(WORK_DIR)/C_DataDecode.o: library-trans-ip/C_DataDecode.cpp library-trans-ip/C_DataDecode.hpp common/Utils.hpp
	@echo "[Compiling library-trans-ip/C_DataDecode.cpp]"
	@$(CC_LIB) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_LIB) $(CC_INCLUDE_LIB) -c library-trans-ip/C_DataDecode.cpp -o $(WORK_DIR)/C_DataDecode.o

$(WORK_DIR)/S_IpAddr.o: library-trans-ip/S_IpAddr.cpp library-trans-ip/S_IpAddr.hpp common/Utils.hpp
	@echo "[Compiling library-trans-ip/S_IpAddr.cpp]"
	@$(CC_LIB) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_LIB) $(CC_INCLUDE_LIB) -c library-trans-ip/S_IpAddr.cpp -o $(WORK_DIR)/S_IpAddr.o

