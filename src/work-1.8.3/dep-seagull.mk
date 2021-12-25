# File: /home/kube5/seagull_new/Seagull/seagull/trunk/src/work-1.8.3/dep-seagull.mk

include Makefile-common.mk
include $(WORK_DIR)/compiler.mk
# Target objects
TARGET_OBJ = \
    $(WORK_DIR)/integer_t.o \
    $(WORK_DIR)/C_RegExp.o \
    $(WORK_DIR)/C_Semaphore.o \
    $(WORK_DIR)/C_SemaphoreTimed.o \
    $(WORK_DIR)/C_MultiList.o \
    $(WORK_DIR)/ExternalMethodDef.o \
    $(WORK_DIR)/TextUtils.o \
    $(WORK_DIR)/BufferUtils.o \
    $(WORK_DIR)/C_Mutex.o \
    $(WORK_DIR)/TimeUtils.o \
    $(WORK_DIR)/C_IdGenerator.o \
    $(WORK_DIR)/C_DisplayControl.o \
    $(WORK_DIR)/C_CommandLine.o \
    $(WORK_DIR)/C_LogProtocolStatControl.o \
    $(WORK_DIR)/main.o \
    $(WORK_DIR)/C_GeneratorConfig.o \
    $(WORK_DIR)/C_LogStatControl.o \
    $(WORK_DIR)/C_Generator.o \
    $(WORK_DIR)/C_KeyboardControl.o \
    $(WORK_DIR)/C_TaskControl.o \
    $(WORK_DIR)/GeneratorTrace.o \
    $(WORK_DIR)/cmd_line_t.o \
    $(WORK_DIR)/C_ResponseTimeLog.o \
    $(WORK_DIR)/C_ChannelControl.o \
    $(WORK_DIR)/C_TransportControl.o \
    $(WORK_DIR)/C_ProtocolControl.o \
    $(WORK_DIR)/ProtocolData.o \
    $(WORK_DIR)/C_ProtocolBinary.o \
    $(WORK_DIR)/C_MessageBinary.o \
    $(WORK_DIR)/C_MessageBinarySeparator.o \
    $(WORK_DIR)/C_ProtocolBinarySeparator.o \
    $(WORK_DIR)/C_ProtocolTlv.o \
    $(WORK_DIR)/C_ProtocolContext.o \
    $(WORK_DIR)/C_MessageTlv.o \
    $(WORK_DIR)/C_ProtocolBinaryBodyNotInterpreted.o \
    $(WORK_DIR)/C_MessageBinaryBodyNotInterpreted.o \
    $(WORK_DIR)/C_MessageExternal.o \
    $(WORK_DIR)/C_ProtocolExternal.o \
    $(WORK_DIR)/C_ProtocolText.o \
    $(WORK_DIR)/C_MessageText.o \
    $(WORK_DIR)/C_ProtocolStats.o \
    $(WORK_DIR)/C_ScenarioStats.o \
    $(WORK_DIR)/C_DataLogControl.o \
    $(WORK_DIR)/C_DataLogRTDistrib.o \
    $(WORK_DIR)/C_LogValue.o \
    $(WORK_DIR)/C_TrafficModel.o \
    $(WORK_DIR)/C_TrafficDistribPoisson.o \
    $(WORK_DIR)/C_CallContext.o \
    $(WORK_DIR)/C_CallControl.o \
    $(WORK_DIR)/C_TrafficDistribBestEffort.o \
    $(WORK_DIR)/C_ReadControl.o \
    $(WORK_DIR)/C_TrafficDistribUniform.o \
    $(WORK_DIR)/mersenne.o \
    $(WORK_DIR)/stoc1.o \
    $(WORK_DIR)/C_Scenario.o \
    $(WORK_DIR)/C_ScenarioControl.o \
    $(WORK_DIR)/C_SequentialExtDataCtrl.o \
    $(WORK_DIR)/C_RandomExtDataCtrl.o \
    $(WORK_DIR)/C_ExternalDataControl.o \
    $(WORK_DIR)/C_XmlData.o \
    $(WORK_DIR)/C_XmlParser.o \
    $(WORK_DIR)/lex.yy.o \
    $(WORK_DIR)/y.tab.o \
    $(WORK_DIR)/C_DisplayTraffic.o \
    $(WORK_DIR)/C_GeneratorStats.o \
    $(WORK_DIR)/C_DisplayRTime.o \
    $(WORK_DIR)/C_DisplayHelp.o \
    $(WORK_DIR)/C_OpenAction.o \
    $(WORK_DIR)/C_GetExternalDataActionToMem.o \
    $(WORK_DIR)/C_CloseAction.o \
    $(WORK_DIR)/C_CheckAllMsgAction.o \
    $(WORK_DIR)/C_StopTimerAction.o \
    $(WORK_DIR)/C_CheckOrderAction.o \
    $(WORK_DIR)/C_InsertInMapAction.o \
    $(WORK_DIR)/C_SelectExternalDataLineAction.o \
    $(WORK_DIR)/C_LogAction.o \
    $(WORK_DIR)/C_TransportOptionAction.o \
    $(WORK_DIR)/C_SetBitAction.o \
    $(WORK_DIR)/C_StoreAction.o \
    $(WORK_DIR)/C_StartTimerAction.o \
    $(WORK_DIR)/C_InsertInMapActionFromMem.o \
    $(WORK_DIR)/C_CheckPresenceAction.o \
    $(WORK_DIR)/C_CommandAction.o \
    $(WORK_DIR)/C_IncVarAction.o \
    $(WORK_DIR)/C_SetValueBitAction.o \
    $(WORK_DIR)/C_CommandActionFactory.o \
    $(WORK_DIR)/C_SetNewSessionIdAction.o \
    $(WORK_DIR)/C_AddDefaultInCallMapAction.o \
    $(WORK_DIR)/C_AddInCallMapAction.o \
    $(WORK_DIR)/C_GetExternalDataAction.o \
    $(WORK_DIR)/C_SetValueActionMethodExtern.o \
    $(WORK_DIR)/C_IncCounterAction.o \
    $(WORK_DIR)/C_ReStoreAction.o \
    $(WORK_DIR)/C_SetValueAction.o \
    $(WORK_DIR)/C_CheckValueAction.o \
    $(WORK_DIR)/C_InternalInitDoneAction.o \
    $(WORK_DIR)/C_RemoteControl.o


# Include specific paths
MODULE_PATH = -I./common -I./generator-common -I./generator-core -I./generator-model -I./protocol-frame -I./protocol-data -I./protocol-binary -I./protocol-binary-body-with-separator -I./protocol-tlv -I./protocol-binary-body-not-interpreted -I./protocol-external -I./protocol-text -I./protocol-stats -I./scenario-stats -I./data-log -I./transport-frame -I./generator-traffic -I./generator-ext-AgnerLib -I./generator-scenario -I./external-data -I./xml-parser -I./generator-stats -I./parser-frame -I./filter-frame -I./command-actions -I./generator-control 

# General entry
FINAL_TARGET=$(BUILD_DIR)/seagull
$(FINAL_TARGET): $(TARGET_OBJ)
	@echo "[Linking $(FINAL_TARGET)]"
	@$(LD_EXE) $(LD_FLAGS_EXE) $(TARGET_OBJ) $(LD_PATH_EXE) $(LD_LIBS_EXE) -o $(FINAL_TARGET)
	

# Header files rules
command-actions/C_AddDefaultInCallMapAction.hpp:  command-actions/C_CommandAction.hpp

command-actions/C_AddInCallMapAction.hpp:  command-actions/C_CommandAction.hpp

command-actions/C_CheckAllMsgAction.hpp:  command-actions/C_CommandAction.hpp

command-actions/C_CheckOrderAction.hpp:  command-actions/C_CommandAction.hpp

command-actions/C_CheckPresenceAction.hpp:  command-actions/C_CommandAction.hpp

command-actions/C_CheckValueAction.hpp:  command-actions/C_CommandAction.hpp

command-actions/C_CloseAction.hpp:  command-actions/C_CommandAction.hpp

command-actions/C_CommandAction.hpp:  protocol-frame/C_MessageFrame.hpp data-log/C_DataLogControl.hpp generator-stats/C_GeneratorStats.hpp external-data/C_ExternalDataControl.hpp generator-traffic/C_CallContext.hpp generator-model/C_ChannelControl.hpp generator-scenario/C_Scenario.hpp generator-core/C_ResponseTimeLog.hpp

command-actions/C_CommandActionFactory.hpp:  command-actions/C_CommandAction.hpp generator-scenario/C_Scenario.hpp

command-actions/C_GetExternalDataAction.hpp:  command-actions/C_CommandAction.hpp

command-actions/C_GetExternalDataActionToMem.hpp:  command-actions/C_GetExternalDataAction.hpp

command-actions/C_IncCounterAction.hpp:  command-actions/C_CommandAction.hpp

command-actions/C_IncVarAction.hpp:  command-actions/C_CommandAction.hpp

command-actions/C_InsertInMapAction.hpp:  command-actions/C_CommandAction.hpp

command-actions/C_InsertInMapActionFromMem.hpp:  command-actions/C_InsertInMapAction.hpp

command-actions/C_InternalInitDoneAction.hpp:  command-actions/C_CommandAction.hpp

command-actions/C_LogAction.hpp:  command-actions/C_SetValueAction.hpp

command-actions/C_OpenAction.hpp:  command-actions/C_CommandAction.hpp

command-actions/C_ReStoreAction.hpp:  command-actions/C_CommandAction.hpp

command-actions/C_SelectExternalDataLineAction.hpp:  command-actions/C_CommandAction.hpp

command-actions/C_SetBitAction.hpp:  command-actions/C_CommandAction.hpp

command-actions/C_SetNewSessionIdAction.hpp:  command-actions/C_CommandAction.hpp

command-actions/C_SetValueAction.hpp:  command-actions/C_CommandAction.hpp

command-actions/C_SetValueActionMethodExtern.hpp:  command-actions/C_SetValueAction.hpp

command-actions/C_SetValueBitAction.hpp:  command-actions/C_CommandAction.hpp

command-actions/C_StartTimerAction.hpp:  command-actions/C_CommandAction.hpp

command-actions/C_StopTimerAction.hpp:  command-actions/C_CommandAction.hpp

command-actions/C_StoreAction.hpp:  command-actions/C_CommandAction.hpp data-log/C_DataLogControl.hpp

command-actions/C_TransportOptionAction.hpp:  command-actions/C_CommandAction.hpp

common/C_RegExp.hpp:  common/types_t.hpp

common/Utils.hpp:  common/iostream_t.hpp

common/dlfcn_t.hpp: 

common/integer_t.hpp:  common/iostream_t.hpp

common/iostream_t.hpp: 

common/list_t.hpp: 

common/map_t.hpp: 

common/set_t.hpp: 

common/string_t.hpp: 

data-log/C_DataLogControl.hpp:  common/list_t.hpp common/fstream_t.hpp generator-core/C_TaskControl.hpp data-log/C_LogValue.hpp generator-common/C_SemaphoreTimed.hpp

data-log/C_DataLogRTDistrib.hpp:  data-log/C_DataLogControl.hpp

data-log/C_LogValue.hpp: 

external-data/C_ExternalDataControl.hpp:  protocol-data/ProtocolData.hpp common/fstream_t.hpp

external-data/C_RandomExtDataCtrl.hpp:  external-data/C_ExternalDataControl.hpp

external-data/C_SequentialExtDataCtrl.hpp:  external-data/C_ExternalDataControl.hpp

filter-frame/FilterFrame.hpp:  protocol-frame/C_ProtocolFrame.hpp

generator-common/BufferUtils.hpp:  common/integer_t.hpp

generator-common/C_IdGenerator.hpp: 

generator-common/C_MultiList.cpp:  generator-common/C_MultiList.hpp common/Utils.hpp common/iostream_t.hpp

generator-common/C_MultiList.hpp: 

generator-common/C_Mutex.hpp: 

generator-common/C_Semaphore.hpp: 

generator-common/C_SemaphoreTimed.hpp:  generator-common/C_Semaphore.hpp

generator-common/ExternalMethodDef.hpp:  common/list_t.hpp protocol-frame/ExternalMethod.h

generator-common/MutexImpl.h: 

generator-common/SemaphoreImpl.h: 

generator-common/TextUtils.hpp: 

generator-common/TimeUtils.hpp: 

generator-control/C_RemoteControl.hpp:  common/select_t.hpp generator-core/C_TaskControl.hpp common/list_t.hpp generator-model/C_TransportControl.hpp protocol-frame/C_ProtocolFrame.hpp generator-core/C_GeneratorConfig.hpp generator-model/C_ProtocolControl.hpp protocol-text/C_ProtocolText.hpp generator-stats/C_GeneratorStats.hpp

generator-core/C_CommandLine.cpp:  generator-core/C_CommandLine.hpp

generator-core/C_CommandLine.hpp:  common/Utils.hpp

generator-core/C_DisplayControl.hpp:  generator-common/C_Semaphore.hpp generator-common/C_SemaphoreTimed.hpp generator-stats/C_GeneratorStats.hpp generator-core/C_TaskControl.hpp generator-core/C_DisplayObject.hpp common/list_t.hpp

generator-core/C_Generator.hpp:  generator-core/C_TaskControl.hpp generator-core/cmd_line_t.hpp generator-core/C_GeneratorConfig.hpp generator-core/GeneratorXmlData.hpp generator-traffic/C_ReadControl.hpp xml-parser/C_XmlData.hpp generator-scenario/C_ScenarioControl.hpp generator-control/C_RemoteControl.hpp generator-core/C_DisplayControl.hpp generator-core/C_LogStatControl.hpp generator-core/C_KeyboardControl.hpp data-log/C_DataLogControl.hpp data-log/C_DataLogRTDistrib.hpp generator-model/C_ProtocolControl.hpp generator-model/C_TransportControl.hpp generator-model/C_ChannelControl.hpp external-data/C_ExternalDataControl.hpp generator-stats/C_DisplayTraffic.hpp generator-stats/C_DisplayRTime.hpp generator-stats/C_DisplayHelp.hpp generator-core/gen_operation_t.hpp generator-core/C_LogProtocolStatControl.hpp common/list_t.hpp

generator-core/C_GeneratorConfig.hpp:  common/Utils.hpp generator-core/C_CommandLine.hpp xml-parser/C_XmlData.hpp transport-frame/T_ConfigValue.h common/iostream_t.hpp common/string_t.hpp protocol-frame/message_check_t.h common/list_t.hpp

generator-core/C_KeyboardControl.hpp:  generator-common/C_SemaphoreTimed.hpp generator-stats/C_GeneratorStats.hpp generator-core/C_TaskControl.hpp

generator-core/C_LogProtocolStatControl.hpp:  generator-common/C_SemaphoreTimed.hpp protocol-frame/C_ProtocolStatsFrame.hpp generator-core/C_TaskControl.hpp common/string_t.hpp

generator-core/C_LogStatControl.hpp:  generator-common/C_SemaphoreTimed.hpp generator-stats/C_GeneratorStats.hpp generator-core/C_TaskControl.hpp common/string_t.hpp

generator-core/C_ResponseTimeLog.hpp: 

generator-core/C_TaskControl.hpp:  common/iostream_t.hpp generator-core/GeneratorError.h

generator-core/GeneratorDefaults.h: 

generator-core/GeneratorError.h: 

generator-core/GeneratorTrace.hpp:  common/iostream_t.hpp common/fstream_t.hpp common/string_t.hpp

generator-core/cmd_line_t.hpp: 

generator-ext-AgnerLib/randomc.h: 

generator-ext-AgnerLib/stocc.h:  generator-ext-AgnerLib/randomc.h

generator-model/C_ChannelControl.hpp:  common/string_t.hpp common/map_t.hpp generator-common/C_IdGenerator.hpp xml-parser/C_XmlData.hpp protocol-frame/C_MessageFrame.hpp generator-model/C_TransportControl.hpp generator-model/C_ProtocolControl.hpp generator-common/C_SemaphoreTimed.hpp

generator-model/C_ProtocolControl.hpp:  common/string_t.hpp common/map_t.hpp generator-common/C_IdGenerator.hpp xml-parser/C_XmlData.hpp protocol-frame/C_ProtocolFrame.hpp generator-model/C_TransportControl.hpp generator-core/C_GeneratorConfig.hpp protocol-stats/C_ProtocolStats.hpp

generator-model/C_TransportControl.hpp:  common/string_t.hpp common/map_t.hpp common/select_t.hpp generator-common/C_IdGenerator.hpp xml-parser/C_XmlData.hpp transport-frame/C_Transport.hpp protocol-frame/C_ProtocolFrame.hpp

generator-scenario/C_Scenario.hpp:  common/iostream_t.hpp common/list_t.hpp common/map_t.hpp common/string_t.hpp protocol-frame/C_MessageFrame.hpp generator-traffic/C_CallContext.hpp protocol-frame/C_ProtocolFrame.hpp generator-stats/C_GeneratorStats.hpp data-log/C_DataLogControl.hpp generator-core/C_GeneratorConfig.hpp generator-model/C_ChannelControl.hpp external-data/C_ExternalDataControl.hpp scenario-stats/C_ScenarioStats.hpp common/C_RegExp.hpp protocol-frame/ExternalMethod.h protocol-frame/message_header_body_t.h generator-scenario/exe_code_t.h

generator-scenario/C_ScenarioControl.hpp:  common/iostream_t.hpp common/map_t.hpp common/set_t.hpp common/string_t.hpp generator-core/C_GeneratorConfig.hpp generator-core/GeneratorXmlData.hpp xml-parser/C_XmlData.hpp generator-scenario/C_Scenario.hpp generator-traffic/TrafficType.h generator-model/C_ProtocolControl.hpp generator-model/C_TransportControl.hpp generator-model/C_ChannelControl.hpp data-log/C_DataLogControl.hpp external-data/C_ExternalDataControl.hpp command-actions/C_CommandActionFactory.hpp generator-core/C_ResponseTimeLog.hpp

generator-stats/C_DisplayHelp.hpp:  generator-core/C_DisplayObject.hpp generator-core/C_DisplayControl.hpp

generator-stats/C_DisplayRTime.hpp:  generator-stats/C_GeneratorStats.hpp generator-core/C_DisplayObject.hpp

generator-stats/C_DisplayTraffic.hpp:  generator-stats/C_GeneratorStats.hpp generator-core/C_DisplayObject.hpp

generator-stats/C_GeneratorStats.hpp:  generator-common/TimeUtils.hpp generator-common/C_Mutex.hpp common/fstream_t.hpp

generator-stats/StatMacros.hpp: 

generator-traffic/C_CallContext.hpp:  common/map_t.hpp protocol-data/ProtocolData.hpp protocol-frame/C_MessageFrame.hpp transport-frame/ReceiveMsgContext.h protocol-frame/C_ContextFrame.hpp generator-scenario/exe_code_t.h

generator-traffic/C_CallControl.hpp:  generator-core/C_TaskControl.hpp protocol-frame/C_MessageFrame.hpp generator-traffic/C_CallContext.hpp generator-scenario/C_ScenarioControl.hpp generator-core/C_GeneratorConfig.hpp generator-traffic/TrafficType.h generator-traffic/C_TrafficModel.hpp generator-common/C_MultiList.hpp generator-stats/C_GeneratorStats.hpp generator-model/C_ChannelControl.hpp common/list_t.hpp common/map_t.hpp generator-core/gen_operation_t.hpp protocol-data/ProtocolData.hpp transport-frame/ReceiveMsgContext.h generator-traffic/C_TrafficDistribUniform.hpp generator-traffic/C_TrafficDistribBestEffort.hpp generator-traffic/C_TrafficDistribPoisson.hpp

generator-traffic/C_ReadControl.hpp:  common/select_t.hpp generator-core/C_TaskControl.hpp transport-frame/C_Transport.hpp generator-traffic/C_CallControl.hpp generator-core/GeneratorXmlData.hpp generator-scenario/C_ScenarioControl.hpp generator-traffic/TrafficType.h generator-core/C_GeneratorConfig.hpp protocol-frame/C_ProtocolFrame.hpp generator-stats/C_GeneratorStats.hpp generator-model/C_TransportControl.hpp generator-model/C_ChannelControl.hpp generator-core/gen_operation_t.hpp

generator-traffic/C_TrafficDistribBestEffort.hpp:  generator-traffic/C_TrafficModel.hpp

generator-traffic/C_TrafficDistribPoisson.hpp:  generator-traffic/C_TrafficModel.hpp generator-ext-AgnerLib/stocc.h

generator-traffic/C_TrafficDistribUniform.hpp:  generator-traffic/C_TrafficModel.hpp

generator-traffic/C_TrafficModel.hpp:  generator-common/C_Semaphore.hpp

generator-traffic/TrafficType.h: 

parser-frame/ParserFrame.hpp:  protocol-frame/C_ProtocolFrame.hpp

protocol-binary-body-not-interpreted/C_MessageBinaryBodyNotInterpreted.hpp:  protocol-binary/C_MessageBinary.hpp protocol-binary-body-not-interpreted/C_ProtocolBinaryBodyNotInterpreted.hpp protocol-frame/C_ContextFrame.hpp

protocol-binary-body-not-interpreted/C_ProtocolBinaryBodyNotInterpreted.hpp:  protocol-binary/C_ProtocolBinary.hpp common/map_t.hpp

protocol-binary-body-with-separator/C_MessageBinarySeparator.hpp:  protocol-binary/C_MessageBinary.hpp protocol-binary-body-with-separator/C_ProtocolBinarySeparator.hpp

protocol-binary-body-with-separator/C_ProtocolBinarySeparator.hpp:  protocol-binary/C_ProtocolBinary.hpp

protocol-binary/C_MessageBinary.hpp:  generator-core/C_GeneratorConfig.hpp protocol-frame/C_MessageFrame.hpp protocol-binary/C_ProtocolBinary.hpp protocol-frame/C_ContextFrame.hpp common/iostream_t.hpp common/C_RegExp.hpp

protocol-binary/C_ProtocolBinary.hpp:  common/Utils.hpp xml-parser/C_XmlData.hpp common/iostream_t.hpp common/string_t.hpp common/map_t.hpp protocol-stats/C_ProtocolStats.hpp protocol-frame/C_ProtocolBinaryFrame.hpp protocol-frame/ExternalMethod.h generator-common/ExternalMethodDef.hpp

protocol-data/ProtocolData.hpp:  common/iostream_t.hpp protocol-frame/ProtocolDataType.hpp

protocol-external/C_MessageExternal.hpp:  common/iostream_t.hpp protocol-frame/C_MessageFrame.hpp generator-core/C_GeneratorConfig.hpp protocol-frame/C_ContextFrame.hpp common/C_RegExp.hpp

protocol-external/C_ProtocolExternal.hpp:  xml-parser/C_XmlData.hpp generator-model/C_TransportControl.hpp protocol-frame/C_ProtocolExternalFrame.hpp protocol-frame/C_MsgBuildContext.hpp protocol-frame/C_MsgBuildContextFactory.hpp common/list_t.hpp common/map_t.hpp common/string_t.hpp generator-core/C_GeneratorConfig.hpp protocol-stats/C_ProtocolStats.hpp

protocol-frame/C_ContextFrame.hpp: 

protocol-frame/C_ProtocolFrame.hpp:  protocol-frame/C_MessageFrame.hpp common/list_t.hpp protocol-frame/ExternalMethod.h protocol-frame/ParamDefConfig.h

protocol-frame/C_ProtocolStatsFrame.hpp:  protocol-frame/ProtocolStats.hpp protocol-frame/C_ProtocolFrame.hpp generator-core/C_DisplayObject.hpp

protocol-stats/C_ProtocolStats.hpp:  common/iostream_t.hpp protocol-frame/C_ProtocolFrame.hpp common/Utils.hpp generator-core/C_DisplayObject.hpp protocol-frame/C_ProtocolStatsFrame.hpp generator-common/C_Semaphore.hpp common/fstream_t.hpp generator-common/TimeUtils.hpp

protocol-text/C_MessageText.hpp:  generator-core/C_GeneratorConfig.hpp protocol-frame/C_MessageFrame.hpp common/iostream_t.hpp protocol-frame/C_ProtocolTextFrame.hpp protocol-text/TextDef.hpp

protocol-text/C_ProtocolText.hpp:  protocol-frame/C_ProtocolTextFrame.hpp generator-core/C_GeneratorConfig.hpp common/C_RegExp.hpp common/list_t.hpp common/map_t.hpp protocol-frame/ExternalMethod.h protocol-stats/C_ProtocolStats.hpp protocol-text/TextDef.hpp protocol-frame/C_ContextFrame.hpp parser-frame/ParserFrame.hpp filter-frame/FilterFrame.hpp generator-common/ExternalMethodDef.hpp

protocol-tlv/C_MessageTlv.hpp:  generator-core/C_GeneratorConfig.hpp protocol-frame/C_MessageFrame.hpp protocol-tlv/C_ProtocolTlv.hpp protocol-frame/C_ContextFrame.hpp common/iostream_t.hpp common/C_RegExp.hpp

protocol-tlv/C_ProtocolContext.hpp:  common/Utils.hpp protocol-frame/ProtocolDataType.hpp common/list_t.hpp

protocol-tlv/C_ProtocolTlv.hpp:  common/Utils.hpp xml-parser/C_XmlData.hpp common/iostream_t.hpp common/string_t.hpp common/map_t.hpp protocol-stats/C_ProtocolStats.hpp protocol-frame/C_ProtocolBinaryFrame.hpp protocol-tlv/C_ProtocolContext.hpp protocol-frame/ExternalMethod.h generator-common/ExternalMethodDef.hpp

scenario-stats/C_ScenarioStats.hpp:  common/iostream_t.hpp common/Utils.hpp generator-common/C_Semaphore.hpp generator-core/C_DisplayObject.hpp

transport-frame/ReceiveMsgContext.h:  protocol-frame/C_ContextFrame.hpp protocol-frame/C_MessageFrame.hpp common/list_t.hpp

xml-parser/C_XmlData.hpp:  common/list_t.hpp common/iostream_t.hpp

xml-parser/C_XmlParser.hpp:  xml-parser/C_XmlData.hpp common/string_t.hpp common/vector_t.hpp

# Object file rules
$(WORK_DIR)/integer_t.o: common/integer_t.cpp common/integer_t.hpp
	@echo "[Compiling common/integer_t.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c common/integer_t.cpp -o $(WORK_DIR)/integer_t.o

$(WORK_DIR)/C_RegExp.o: common/C_RegExp.cpp common/C_RegExp.hpp common/string_t.hpp common/Utils.hpp
	@echo "[Compiling common/C_RegExp.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c common/C_RegExp.cpp -o $(WORK_DIR)/C_RegExp.o

$(WORK_DIR)/C_Semaphore.o: generator-common/C_Semaphore.cpp common/Utils.hpp generator-common/C_Semaphore.hpp generator-common/SemaphoreImpl.h generator-core/GeneratorTrace.hpp
	@echo "[Compiling generator-common/C_Semaphore.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-common/C_Semaphore.cpp -o $(WORK_DIR)/C_Semaphore.o

$(WORK_DIR)/C_SemaphoreTimed.o: generator-common/C_SemaphoreTimed.cpp generator-common/SemaphoreImpl.h generator-common/C_SemaphoreTimed.hpp generator-core/GeneratorTrace.hpp
	@echo "[Compiling generator-common/C_SemaphoreTimed.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-common/C_SemaphoreTimed.cpp -o $(WORK_DIR)/C_SemaphoreTimed.o

$(WORK_DIR)/C_MultiList.o: generator-common/C_MultiList.cpp generator-common/C_MultiList.hpp common/Utils.hpp common/iostream_t.hpp
	@echo "[Compiling generator-common/C_MultiList.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-common/C_MultiList.cpp -o $(WORK_DIR)/C_MultiList.o

$(WORK_DIR)/ExternalMethodDef.o: generator-common/ExternalMethodDef.cpp generator-common/ExternalMethodDef.hpp generator-common/TextUtils.hpp generator-core/GeneratorError.h generator-core/GeneratorTrace.hpp common/Utils.hpp common/dlfcn_t.hpp
	@echo "[Compiling generator-common/ExternalMethodDef.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-common/ExternalMethodDef.cpp -o $(WORK_DIR)/ExternalMethodDef.o

$(WORK_DIR)/TextUtils.o: generator-common/TextUtils.cpp generator-common/TextUtils.hpp common/Utils.hpp common/string_t.hpp
	@echo "[Compiling generator-common/TextUtils.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-common/TextUtils.cpp -o $(WORK_DIR)/TextUtils.o

$(WORK_DIR)/BufferUtils.o: generator-common/BufferUtils.cpp generator-common/BufferUtils.hpp common/Utils.hpp generator-core/GeneratorTrace.hpp
	@echo "[Compiling generator-common/BufferUtils.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-common/BufferUtils.cpp -o $(WORK_DIR)/BufferUtils.o

$(WORK_DIR)/C_Mutex.o: generator-common/C_Mutex.cpp generator-common/MutexImpl.h common/Utils.hpp generator-common/C_Mutex.hpp
	@echo "[Compiling generator-common/C_Mutex.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-common/C_Mutex.cpp -o $(WORK_DIR)/C_Mutex.o

$(WORK_DIR)/TimeUtils.o: generator-common/TimeUtils.cpp generator-common/TimeUtils.hpp
	@echo "[Compiling generator-common/TimeUtils.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-common/TimeUtils.cpp -o $(WORK_DIR)/TimeUtils.o

$(WORK_DIR)/C_IdGenerator.o: generator-common/C_IdGenerator.cpp generator-common/C_IdGenerator.hpp common/Utils.hpp generator-core/GeneratorTrace.hpp common/list_t.hpp common/set_t.hpp
	@echo "[Compiling generator-common/C_IdGenerator.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-common/C_IdGenerator.cpp -o $(WORK_DIR)/C_IdGenerator.o

$(WORK_DIR)/C_DisplayControl.o: generator-core/C_DisplayControl.cpp generator-core/C_DisplayControl.hpp common/Utils.hpp generator-core/GeneratorTrace.hpp
	@echo "[Compiling generator-core/C_DisplayControl.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-core/C_DisplayControl.cpp -o $(WORK_DIR)/C_DisplayControl.o

$(WORK_DIR)/C_CommandLine.o: generator-core/C_CommandLine.cpp generator-core/C_CommandLine.hpp
	@echo "[Compiling generator-core/C_CommandLine.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-core/C_CommandLine.cpp -o $(WORK_DIR)/C_CommandLine.o

$(WORK_DIR)/C_LogProtocolStatControl.o: generator-core/C_LogProtocolStatControl.cpp common/Utils.hpp generator-core/GeneratorTrace.hpp generator-core/C_LogProtocolStatControl.hpp
	@echo "[Compiling generator-core/C_LogProtocolStatControl.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-core/C_LogProtocolStatControl.cpp -o $(WORK_DIR)/C_LogProtocolStatControl.o

$(WORK_DIR)/main.o: generator-core/main.cpp common/Utils.hpp generator-core/C_Generator.hpp generator-core/GeneratorTrace.hpp generator-common/TimeUtils.hpp generator-core/cmd_line_t.hpp
	@echo "[Compiling generator-core/main.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-core/main.cpp -o $(WORK_DIR)/main.o

$(WORK_DIR)/C_GeneratorConfig.o: generator-core/C_GeneratorConfig.cpp generator-core/C_GeneratorConfig.hpp generator-core/C_CommandLine.cpp generator-core/GeneratorTrace.hpp generator-core/GeneratorDefaults.h common/integer_t.hpp
	@echo "[Compiling generator-core/C_GeneratorConfig.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-core/C_GeneratorConfig.cpp -o $(WORK_DIR)/C_GeneratorConfig.o

$(WORK_DIR)/C_LogStatControl.o: generator-core/C_LogStatControl.cpp common/Utils.hpp generator-core/GeneratorTrace.hpp generator-core/C_LogStatControl.hpp
	@echo "[Compiling generator-core/C_LogStatControl.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-core/C_LogStatControl.cpp -o $(WORK_DIR)/C_LogStatControl.o

$(WORK_DIR)/C_Generator.o: generator-core/C_Generator.cpp generator-core/C_Generator.hpp xml-parser/C_XmlParser.hpp common/Utils.hpp generator-common/TimeUtils.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h generator-traffic/TrafficType.h generator-stats/C_GeneratorStats.hpp external-data/C_SequentialExtDataCtrl.hpp external-data/C_RandomExtDataCtrl.hpp protocol-frame/C_ProtocolFrame.hpp protocol-frame/C_ProtocolStatsFrame.hpp scenario-stats/C_ScenarioStats.hpp common/string_t.hpp common/iostream_t.hpp
	@echo "[Compiling generator-core/C_Generator.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-core/C_Generator.cpp -o $(WORK_DIR)/C_Generator.o

$(WORK_DIR)/C_KeyboardControl.o: generator-core/C_KeyboardControl.cpp generator-core/C_KeyboardControl.hpp common/Utils.hpp generator-core/GeneratorTrace.hpp generator-core/C_Generator.hpp common/integer_t.hpp
	@echo "[Compiling generator-core/C_KeyboardControl.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-core/C_KeyboardControl.cpp -o $(WORK_DIR)/C_KeyboardControl.o

$(WORK_DIR)/C_TaskControl.o: generator-core/C_TaskControl.cpp generator-core/C_TaskControl.hpp common/Utils.hpp generator-core/GeneratorTrace.hpp
	@echo "[Compiling generator-core/C_TaskControl.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-core/C_TaskControl.cpp -o $(WORK_DIR)/C_TaskControl.o

$(WORK_DIR)/GeneratorTrace.o: generator-core/GeneratorTrace.cpp generator-core/GeneratorTrace.hpp common/Utils.hpp generator-common/TimeUtils.hpp
	@echo "[Compiling generator-core/GeneratorTrace.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-core/GeneratorTrace.cpp -o $(WORK_DIR)/GeneratorTrace.o

$(WORK_DIR)/cmd_line_t.o: generator-core/cmd_line_t.cpp generator-core/cmd_line_t.hpp common/Utils.hpp common/string_t.hpp common/iostream_t.hpp
	@echo "[Compiling generator-core/cmd_line_t.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-core/cmd_line_t.cpp -o $(WORK_DIR)/cmd_line_t.o

$(WORK_DIR)/C_ResponseTimeLog.o: generator-core/C_ResponseTimeLog.cpp 
	@echo "[Compiling generator-core/C_ResponseTimeLog.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-core/C_ResponseTimeLog.cpp -o $(WORK_DIR)/C_ResponseTimeLog.o

$(WORK_DIR)/C_ChannelControl.o: generator-model/C_ChannelControl.cpp generator-model/C_ChannelControl.hpp common/Utils.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h common/set_t.hpp
	@echo "[Compiling generator-model/C_ChannelControl.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-model/C_ChannelControl.cpp -o $(WORK_DIR)/C_ChannelControl.o

$(WORK_DIR)/C_TransportControl.o: generator-model/C_TransportControl.cpp generator-model/C_TransportControl.hpp common/Utils.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h common/dlfcn_t.hpp
	@echo "[Compiling generator-model/C_TransportControl.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-model/C_TransportControl.cpp -o $(WORK_DIR)/C_TransportControl.o

$(WORK_DIR)/C_ProtocolControl.o: generator-model/C_ProtocolControl.cpp generator-model/C_ProtocolControl.hpp common/Utils.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h protocol-binary/C_ProtocolBinary.hpp protocol-external/C_ProtocolExternal.hpp protocol-binary-body-not-interpreted/C_ProtocolBinaryBodyNotInterpreted.hpp protocol-binary-body-with-separator/C_ProtocolBinarySeparator.hpp protocol-text/C_ProtocolText.hpp protocol-tlv/C_ProtocolTlv.hpp
	@echo "[Compiling generator-model/C_ProtocolControl.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-model/C_ProtocolControl.cpp -o $(WORK_DIR)/C_ProtocolControl.o

$(WORK_DIR)/ProtocolData.o: protocol-data/ProtocolData.cpp protocol-data/ProtocolData.hpp common/string_t.hpp common/integer_t.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h generator-common/BufferUtils.hpp common/Utils.hpp
	@echo "[Compiling protocol-data/ProtocolData.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c protocol-data/ProtocolData.cpp -o $(WORK_DIR)/ProtocolData.o

$(WORK_DIR)/C_ProtocolBinary.o: protocol-binary/C_ProtocolBinary.cpp protocol-binary/C_ProtocolBinary.hpp generator-core/GeneratorError.h protocol-binary/C_MessageBinary.hpp generator-common/BufferUtils.hpp generator-core/GeneratorTrace.hpp protocol-data/ProtocolData.hpp common/integer_t.hpp
	@echo "[Compiling protocol-binary/C_ProtocolBinary.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c protocol-binary/C_ProtocolBinary.cpp -o $(WORK_DIR)/C_ProtocolBinary.o

$(WORK_DIR)/C_MessageBinary.o: protocol-binary/C_MessageBinary.cpp protocol-binary/C_MessageBinary.hpp generator-common/BufferUtils.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h protocol-data/ProtocolData.hpp transport-frame/ReceiveMsgContext.h generator-traffic/C_CallContext.hpp generator-core/C_ResponseTimeLog.hpp
	@echo "[Compiling protocol-binary/C_MessageBinary.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c protocol-binary/C_MessageBinary.cpp -o $(WORK_DIR)/C_MessageBinary.o

$(WORK_DIR)/C_MessageBinarySeparator.o: protocol-binary-body-with-separator/C_MessageBinarySeparator.cpp protocol-binary-body-with-separator/C_MessageBinarySeparator.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h protocol-data/ProtocolData.hpp
	@echo "[Compiling protocol-binary-body-with-separator/C_MessageBinarySeparator.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c protocol-binary-body-with-separator/C_MessageBinarySeparator.cpp -o $(WORK_DIR)/C_MessageBinarySeparator.o

$(WORK_DIR)/C_ProtocolBinarySeparator.o: protocol-binary-body-with-separator/C_ProtocolBinarySeparator.cpp protocol-binary-body-with-separator/C_ProtocolBinarySeparator.hpp generator-core/GeneratorTrace.hpp generator-common/BufferUtils.hpp generator-core/GeneratorError.h common/string_t.hpp protocol-binary-body-with-separator/C_MessageBinarySeparator.hpp protocol-data/ProtocolData.hpp
	@echo "[Compiling protocol-binary-body-with-separator/C_ProtocolBinarySeparator.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c protocol-binary-body-with-separator/C_ProtocolBinarySeparator.cpp -o $(WORK_DIR)/C_ProtocolBinarySeparator.o

$(WORK_DIR)/C_ProtocolTlv.o: protocol-tlv/C_ProtocolTlv.cpp protocol-tlv/C_ProtocolTlv.hpp generator-core/GeneratorError.h protocol-tlv/C_MessageTlv.hpp generator-common/BufferUtils.hpp generator-core/GeneratorTrace.hpp protocol-data/ProtocolData.hpp common/integer_t.hpp
	@echo "[Compiling protocol-tlv/C_ProtocolTlv.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c protocol-tlv/C_ProtocolTlv.cpp -o $(WORK_DIR)/C_ProtocolTlv.o

$(WORK_DIR)/C_ProtocolContext.o: protocol-tlv/C_ProtocolContext.cpp protocol-tlv/C_ProtocolContext.hpp generator-core/GeneratorError.h generator-common/BufferUtils.hpp generator-core/GeneratorTrace.hpp
	@echo "[Compiling protocol-tlv/C_ProtocolContext.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c protocol-tlv/C_ProtocolContext.cpp -o $(WORK_DIR)/C_ProtocolContext.o

$(WORK_DIR)/C_MessageTlv.o: protocol-tlv/C_MessageTlv.cpp protocol-tlv/C_MessageTlv.hpp generator-common/BufferUtils.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h protocol-data/ProtocolData.hpp transport-frame/ReceiveMsgContext.h generator-traffic/C_CallContext.hpp
	@echo "[Compiling protocol-tlv/C_MessageTlv.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c protocol-tlv/C_MessageTlv.cpp -o $(WORK_DIR)/C_MessageTlv.o

$(WORK_DIR)/C_ProtocolBinaryBodyNotInterpreted.o: protocol-binary-body-not-interpreted/C_ProtocolBinaryBodyNotInterpreted.cpp protocol-binary-body-not-interpreted/C_ProtocolBinaryBodyNotInterpreted.hpp protocol-binary-body-not-interpreted/C_MessageBinaryBodyNotInterpreted.hpp generator-core/GeneratorError.h generator-core/GeneratorTrace.hpp protocol-data/ProtocolData.hpp generator-common/BufferUtils.hpp
	@echo "[Compiling protocol-binary-body-not-interpreted/C_ProtocolBinaryBodyNotInterpreted.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c protocol-binary-body-not-interpreted/C_ProtocolBinaryBodyNotInterpreted.cpp -o $(WORK_DIR)/C_ProtocolBinaryBodyNotInterpreted.o

$(WORK_DIR)/C_MessageBinaryBodyNotInterpreted.o: protocol-binary-body-not-interpreted/C_MessageBinaryBodyNotInterpreted.cpp protocol-binary-body-not-interpreted/C_MessageBinaryBodyNotInterpreted.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h protocol-data/ProtocolData.hpp
	@echo "[Compiling protocol-binary-body-not-interpreted/C_MessageBinaryBodyNotInterpreted.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c protocol-binary-body-not-interpreted/C_MessageBinaryBodyNotInterpreted.cpp -o $(WORK_DIR)/C_MessageBinaryBodyNotInterpreted.o

$(WORK_DIR)/C_MessageExternal.o: protocol-external/C_MessageExternal.cpp protocol-external/C_MessageExternal.hpp common/Utils.hpp protocol-data/ProtocolData.hpp generator-common/BufferUtils.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h protocol-external/C_ProtocolExternal.hpp
	@echo "[Compiling protocol-external/C_MessageExternal.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c protocol-external/C_MessageExternal.cpp -o $(WORK_DIR)/C_MessageExternal.o

$(WORK_DIR)/C_ProtocolExternal.o: protocol-external/C_ProtocolExternal.cpp protocol-external/C_ProtocolExternal.hpp protocol-external/C_MessageExternal.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h common/dlfcn_t.hpp common/Utils.hpp protocol-data/ProtocolData.hpp common/set_t.hpp
	@echo "[Compiling protocol-external/C_ProtocolExternal.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c protocol-external/C_ProtocolExternal.cpp -o $(WORK_DIR)/C_ProtocolExternal.o

$(WORK_DIR)/C_ProtocolText.o: protocol-text/C_ProtocolText.cpp protocol-text/C_ProtocolText.hpp generator-core/GeneratorError.h protocol-text/C_MessageText.hpp generator-common/BufferUtils.hpp generator-core/GeneratorTrace.hpp protocol-data/ProtocolData.hpp common/dlfcn_t.hpp parser-frame/ParserFrame.hpp filter-frame/FilterFrame.hpp generator-common/TextUtils.hpp
	@echo "[Compiling protocol-text/C_ProtocolText.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c protocol-text/C_ProtocolText.cpp -o $(WORK_DIR)/C_ProtocolText.o

$(WORK_DIR)/C_MessageText.o: protocol-text/C_MessageText.cpp protocol-text/C_MessageText.hpp protocol-text/C_ProtocolText.hpp protocol-data/ProtocolData.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h protocol-frame/C_ContextFrame.hpp transport-frame/ReceiveMsgContext.h generator-traffic/C_CallContext.hpp
	@echo "[Compiling protocol-text/C_MessageText.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c protocol-text/C_MessageText.cpp -o $(WORK_DIR)/C_MessageText.o

$(WORK_DIR)/C_ProtocolStats.o: protocol-stats/C_ProtocolStats.cpp protocol-stats/C_ProtocolStats.hpp
	@echo "[Compiling protocol-stats/C_ProtocolStats.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c protocol-stats/C_ProtocolStats.cpp -o $(WORK_DIR)/C_ProtocolStats.o

$(WORK_DIR)/C_ScenarioStats.o: scenario-stats/C_ScenarioStats.cpp scenario-stats/C_ScenarioStats.hpp generator-scenario/C_Scenario.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h
	@echo "[Compiling scenario-stats/C_ScenarioStats.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c scenario-stats/C_ScenarioStats.cpp -o $(WORK_DIR)/C_ScenarioStats.o

$(WORK_DIR)/C_DataLogControl.o: data-log/C_DataLogControl.cpp common/Utils.hpp generator-core/GeneratorTrace.hpp data-log/C_DataLogControl.hpp common/iostream_t.hpp
	@echo "[Compiling data-log/C_DataLogControl.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c data-log/C_DataLogControl.cpp -o $(WORK_DIR)/C_DataLogControl.o

$(WORK_DIR)/C_DataLogRTDistrib.o: data-log/C_DataLogRTDistrib.cpp common/Utils.hpp generator-core/GeneratorTrace.hpp data-log/C_DataLogRTDistrib.hpp common/iostream_t.hpp
	@echo "[Compiling data-log/C_DataLogRTDistrib.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c data-log/C_DataLogRTDistrib.cpp -o $(WORK_DIR)/C_DataLogRTDistrib.o

$(WORK_DIR)/C_LogValue.o: data-log/C_LogValue.cpp data-log/C_LogValue.hpp common/Utils.hpp common/string_t.hpp
	@echo "[Compiling data-log/C_LogValue.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c data-log/C_LogValue.cpp -o $(WORK_DIR)/C_LogValue.o

$(WORK_DIR)/C_TrafficModel.o: generator-traffic/C_TrafficModel.cpp generator-traffic/C_TrafficModel.hpp generator-core/GeneratorTrace.hpp common/Utils.hpp
	@echo "[Compiling generator-traffic/C_TrafficModel.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-traffic/C_TrafficModel.cpp -o $(WORK_DIR)/C_TrafficModel.o

$(WORK_DIR)/C_TrafficDistribPoisson.o: generator-traffic/C_TrafficDistribPoisson.cpp generator-traffic/C_TrafficDistribPoisson.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h common/Utils.hpp generator-ext-AgnerLib/randomc.h generator-ext-AgnerLib/stocc.h
	@echo "[Compiling generator-traffic/C_TrafficDistribPoisson.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-traffic/C_TrafficDistribPoisson.cpp -o $(WORK_DIR)/C_TrafficDistribPoisson.o

$(WORK_DIR)/C_CallContext.o: generator-traffic/C_CallContext.cpp generator-traffic/C_CallContext.hpp generator-scenario/C_Scenario.hpp generator-core/GeneratorTrace.hpp generator-traffic/C_CallControl.hpp common/Utils.hpp
	@echo "[Compiling generator-traffic/C_CallContext.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-traffic/C_CallContext.cpp -o $(WORK_DIR)/C_CallContext.o

$(WORK_DIR)/C_CallControl.o: generator-traffic/C_CallControl.cpp generator-traffic/C_CallControl.hpp common/Utils.hpp generator-core/GeneratorTrace.hpp generator-common/C_MultiList.cpp scenario-stats/C_ScenarioStats.hpp
	@echo "[Compiling generator-traffic/C_CallControl.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-traffic/C_CallControl.cpp -o $(WORK_DIR)/C_CallControl.o

$(WORK_DIR)/C_TrafficDistribBestEffort.o: generator-traffic/C_TrafficDistribBestEffort.cpp generator-traffic/C_TrafficDistribBestEffort.hpp generator-core/GeneratorTrace.hpp common/Utils.hpp
	@echo "[Compiling generator-traffic/C_TrafficDistribBestEffort.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-traffic/C_TrafficDistribBestEffort.cpp -o $(WORK_DIR)/C_TrafficDistribBestEffort.o

$(WORK_DIR)/C_ReadControl.o: generator-traffic/C_ReadControl.cpp generator-traffic/C_ReadControl.hpp common/Utils.hpp generator-core/GeneratorTrace.hpp generator-common/BufferUtils.hpp common/dlfcn_t.hpp
	@echo "[Compiling generator-traffic/C_ReadControl.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-traffic/C_ReadControl.cpp -o $(WORK_DIR)/C_ReadControl.o

$(WORK_DIR)/C_TrafficDistribUniform.o: generator-traffic/C_TrafficDistribUniform.cpp generator-traffic/C_TrafficDistribUniform.hpp generator-core/GeneratorTrace.hpp common/Utils.hpp
	@echo "[Compiling generator-traffic/C_TrafficDistribUniform.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-traffic/C_TrafficDistribUniform.cpp -o $(WORK_DIR)/C_TrafficDistribUniform.o

$(WORK_DIR)/mersenne.o: generator-ext-AgnerLib/mersenne.cpp generator-ext-AgnerLib/randomc.h
	@echo "[Compiling generator-ext-AgnerLib/mersenne.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-ext-AgnerLib/mersenne.cpp -o $(WORK_DIR)/mersenne.o

$(WORK_DIR)/stoc1.o: generator-ext-AgnerLib/stoc1.cpp generator-ext-AgnerLib/stocc.h
	@echo "[Compiling generator-ext-AgnerLib/stoc1.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-ext-AgnerLib/stoc1.cpp -o $(WORK_DIR)/stoc1.o

$(WORK_DIR)/C_Scenario.o: generator-scenario/C_Scenario.cpp generator-scenario/C_Scenario.hpp common/Utils.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h generator-common/BufferUtils.hpp generator-common/TimeUtils.hpp command-actions/C_CommandAction.hpp generator-scenario/C_ScenarioControl.hpp common/integer_t.hpp
	@echo "[Compiling generator-scenario/C_Scenario.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-scenario/C_Scenario.cpp -o $(WORK_DIR)/C_Scenario.o

$(WORK_DIR)/C_ScenarioControl.o: generator-scenario/C_ScenarioControl.cpp generator-scenario/C_ScenarioControl.hpp common/Utils.hpp protocol-data/ProtocolData.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h generator-traffic/C_ReadControl.hpp generator-common/BufferUtils.hpp scenario-stats/C_ScenarioStats.hpp command-actions/C_CommandActionFactory.hpp generator-stats/C_GeneratorStats.hpp command-actions/C_CommandAction.hpp common/list_t.hpp common/integer_t.hpp
	@echo "[Compiling generator-scenario/C_ScenarioControl.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-scenario/C_ScenarioControl.cpp -o $(WORK_DIR)/C_ScenarioControl.o

$(WORK_DIR)/C_SequentialExtDataCtrl.o: external-data/C_SequentialExtDataCtrl.cpp external-data/C_SequentialExtDataCtrl.hpp
	@echo "[Compiling external-data/C_SequentialExtDataCtrl.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c external-data/C_SequentialExtDataCtrl.cpp -o $(WORK_DIR)/C_SequentialExtDataCtrl.o

$(WORK_DIR)/C_RandomExtDataCtrl.o: external-data/C_RandomExtDataCtrl.cpp external-data/C_RandomExtDataCtrl.hpp
	@echo "[Compiling external-data/C_RandomExtDataCtrl.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c external-data/C_RandomExtDataCtrl.cpp -o $(WORK_DIR)/C_RandomExtDataCtrl.o

$(WORK_DIR)/C_ExternalDataControl.o: external-data/C_ExternalDataControl.cpp external-data/C_ExternalDataControl.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h common/Utils.hpp generator-common/BufferUtils.hpp common/list_t.hpp common/integer_t.hpp
	@echo "[Compiling external-data/C_ExternalDataControl.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c external-data/C_ExternalDataControl.cpp -o $(WORK_DIR)/C_ExternalDataControl.o

$(WORK_DIR)/C_XmlData.o: xml-parser/C_XmlData.cpp xml-parser/C_XmlData.hpp common/Utils.hpp generator-core/GeneratorTrace.hpp
	@echo "[Compiling xml-parser/C_XmlData.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c xml-parser/C_XmlData.cpp -o $(WORK_DIR)/C_XmlData.o

$(WORK_DIR)/C_XmlParser.o: xml-parser/C_XmlParser.cpp xml-parser/C_XmlParser.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h common/Utils.hpp
	@echo "[Compiling xml-parser/C_XmlParser.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c xml-parser/C_XmlParser.cpp -o $(WORK_DIR)/C_XmlParser.o

$(WORK_DIR)/lex.yy.c: xml-parser/xml_definition.l generator-core/GeneratorError.h generator-core/GeneratorTrace.hpp xml-parser/C_XmlParser.hpp ${WORK_DIR}/y.tab.h
	@echo "[Generating lex.yy.c]"
	@$(LEX_EXE) $(LEX_FLAGS_EXE) xml-parser/xml_definition.l
	@$(MV) lex.yy.c $(WORK_DIR)/lex.yy.c

$(WORK_DIR)/lex.yy.o: $(WORK_DIR)/lex.yy.c 
	@echo "[Compiling $(WORK_DIR)/lex.yy.c]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(LEX_CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c $(WORK_DIR)/lex.yy.c -o $(WORK_DIR)/lex.yy.o

$(WORK_DIR)/y.tab.c $(WORK_DIR)/y.tab.h: xml-parser/xml_definition.y generator-core/GeneratorTrace.hpp xml-parser/C_XmlParser.hpp common/Utils.hpp
	@echo "[Generating y.tab.c]"
	@$(YACC_EXE) $(YACC_FLAGS_EXE) xml-parser/xml_definition.y
	@$(MV) y.tab.c $(WORK_DIR)/y.tab.c
	@$(MV) y.tab.h $(WORK_DIR)/y.tab.h

$(WORK_DIR)/y.tab.o: $(WORK_DIR)/y.tab.c 
	@echo "[Compiling $(WORK_DIR)/y.tab.c]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(YACC_CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c $(WORK_DIR)/y.tab.c -o $(WORK_DIR)/y.tab.o

$(WORK_DIR)/C_DisplayTraffic.o: generator-stats/C_DisplayTraffic.cpp generator-stats/C_DisplayTraffic.hpp
	@echo "[Compiling generator-stats/C_DisplayTraffic.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-stats/C_DisplayTraffic.cpp -o $(WORK_DIR)/C_DisplayTraffic.o

$(WORK_DIR)/C_GeneratorStats.o: generator-stats/C_GeneratorStats.cpp generator-stats/C_GeneratorStats.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h generator-stats/StatMacros.hpp common/Utils.hpp common/iostream_t.hpp
	@echo "[Compiling generator-stats/C_GeneratorStats.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-stats/C_GeneratorStats.cpp -o $(WORK_DIR)/C_GeneratorStats.o

$(WORK_DIR)/C_DisplayRTime.o: generator-stats/C_DisplayRTime.cpp generator-stats/C_DisplayRTime.hpp
	@echo "[Compiling generator-stats/C_DisplayRTime.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-stats/C_DisplayRTime.cpp -o $(WORK_DIR)/C_DisplayRTime.o

$(WORK_DIR)/C_DisplayHelp.o: generator-stats/C_DisplayHelp.cpp generator-stats/C_DisplayHelp.hpp
	@echo "[Compiling generator-stats/C_DisplayHelp.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-stats/C_DisplayHelp.cpp -o $(WORK_DIR)/C_DisplayHelp.o

$(WORK_DIR)/C_OpenAction.o: command-actions/C_OpenAction.cpp command-actions/C_OpenAction.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h
	@echo "[Compiling command-actions/C_OpenAction.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c command-actions/C_OpenAction.cpp -o $(WORK_DIR)/C_OpenAction.o

$(WORK_DIR)/C_GetExternalDataActionToMem.o: command-actions/C_GetExternalDataActionToMem.cpp command-actions/C_GetExternalDataActionToMem.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h
	@echo "[Compiling command-actions/C_GetExternalDataActionToMem.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c command-actions/C_GetExternalDataActionToMem.cpp -o $(WORK_DIR)/C_GetExternalDataActionToMem.o

$(WORK_DIR)/C_CloseAction.o: command-actions/C_CloseAction.cpp command-actions/C_CloseAction.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h
	@echo "[Compiling command-actions/C_CloseAction.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c command-actions/C_CloseAction.cpp -o $(WORK_DIR)/C_CloseAction.o

$(WORK_DIR)/C_CheckAllMsgAction.o: command-actions/C_CheckAllMsgAction.cpp command-actions/C_CheckAllMsgAction.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h
	@echo "[Compiling command-actions/C_CheckAllMsgAction.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c command-actions/C_CheckAllMsgAction.cpp -o $(WORK_DIR)/C_CheckAllMsgAction.o

$(WORK_DIR)/C_StopTimerAction.o: command-actions/C_StopTimerAction.cpp command-actions/C_StopTimerAction.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h generator-core/C_ResponseTimeLog.hpp generator-traffic/C_CallControl.hpp
	@echo "[Compiling command-actions/C_StopTimerAction.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c command-actions/C_StopTimerAction.cpp -o $(WORK_DIR)/C_StopTimerAction.o

$(WORK_DIR)/C_CheckOrderAction.o: command-actions/C_CheckOrderAction.cpp command-actions/C_CheckOrderAction.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h
	@echo "[Compiling command-actions/C_CheckOrderAction.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c command-actions/C_CheckOrderAction.cpp -o $(WORK_DIR)/C_CheckOrderAction.o

$(WORK_DIR)/C_InsertInMapAction.o: command-actions/C_InsertInMapAction.cpp command-actions/C_InsertInMapAction.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h generator-traffic/C_CallControl.hpp common/map_t.hpp
	@echo "[Compiling command-actions/C_InsertInMapAction.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c command-actions/C_InsertInMapAction.cpp -o $(WORK_DIR)/C_InsertInMapAction.o

$(WORK_DIR)/C_SelectExternalDataLineAction.o: command-actions/C_SelectExternalDataLineAction.cpp command-actions/C_SelectExternalDataLineAction.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h
	@echo "[Compiling command-actions/C_SelectExternalDataLineAction.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c command-actions/C_SelectExternalDataLineAction.cpp -o $(WORK_DIR)/C_SelectExternalDataLineAction.o

$(WORK_DIR)/C_LogAction.o: command-actions/C_LogAction.cpp command-actions/C_LogAction.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h generator-scenario/C_ScenarioControl.hpp generator-common/BufferUtils.hpp
	@echo "[Compiling command-actions/C_LogAction.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c command-actions/C_LogAction.cpp -o $(WORK_DIR)/C_LogAction.o

$(WORK_DIR)/C_TransportOptionAction.o: command-actions/C_TransportOptionAction.cpp command-actions/C_TransportOptionAction.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h
	@echo "[Compiling command-actions/C_TransportOptionAction.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c command-actions/C_TransportOptionAction.cpp -o $(WORK_DIR)/C_TransportOptionAction.o

$(WORK_DIR)/C_SetBitAction.o: command-actions/C_SetBitAction.cpp command-actions/C_SetBitAction.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h generator-common/BufferUtils.hpp
	@echo "[Compiling command-actions/C_SetBitAction.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c command-actions/C_SetBitAction.cpp -o $(WORK_DIR)/C_SetBitAction.o

$(WORK_DIR)/C_StoreAction.o: command-actions/C_StoreAction.cpp command-actions/C_StoreAction.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h
	@echo "[Compiling command-actions/C_StoreAction.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c command-actions/C_StoreAction.cpp -o $(WORK_DIR)/C_StoreAction.o

$(WORK_DIR)/C_StartTimerAction.o: command-actions/C_StartTimerAction.cpp command-actions/C_StartTimerAction.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h
	@echo "[Compiling command-actions/C_StartTimerAction.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c command-actions/C_StartTimerAction.cpp -o $(WORK_DIR)/C_StartTimerAction.o

$(WORK_DIR)/C_InsertInMapActionFromMem.o: command-actions/C_InsertInMapActionFromMem.cpp command-actions/C_InsertInMapActionFromMem.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h generator-traffic/C_CallControl.hpp common/map_t.hpp
	@echo "[Compiling command-actions/C_InsertInMapActionFromMem.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c command-actions/C_InsertInMapActionFromMem.cpp -o $(WORK_DIR)/C_InsertInMapActionFromMem.o

$(WORK_DIR)/C_CheckPresenceAction.o: command-actions/C_CheckPresenceAction.cpp command-actions/C_CheckPresenceAction.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h
	@echo "[Compiling command-actions/C_CheckPresenceAction.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c command-actions/C_CheckPresenceAction.cpp -o $(WORK_DIR)/C_CheckPresenceAction.o

$(WORK_DIR)/C_CommandAction.o: command-actions/C_CommandAction.cpp command-actions/C_CommandAction.hpp generator-scenario/C_ScenarioControl.hpp
	@echo "[Compiling command-actions/C_CommandAction.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c command-actions/C_CommandAction.cpp -o $(WORK_DIR)/C_CommandAction.o

$(WORK_DIR)/C_IncVarAction.o: command-actions/C_IncVarAction.cpp command-actions/C_IncVarAction.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h
	@echo "[Compiling command-actions/C_IncVarAction.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c command-actions/C_IncVarAction.cpp -o $(WORK_DIR)/C_IncVarAction.o

$(WORK_DIR)/C_SetValueBitAction.o: command-actions/C_SetValueBitAction.cpp command-actions/C_SetValueBitAction.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h generator-common/BufferUtils.hpp
	@echo "[Compiling command-actions/C_SetValueBitAction.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c command-actions/C_SetValueBitAction.cpp -o $(WORK_DIR)/C_SetValueBitAction.o

$(WORK_DIR)/C_CommandActionFactory.o: command-actions/C_CommandActionFactory.cpp command-actions/C_CommandActionFactory.hpp command-actions/C_StoreAction.hpp command-actions/C_ReStoreAction.hpp command-actions/C_StartTimerAction.hpp command-actions/C_StopTimerAction.hpp command-actions/C_SetValueAction.hpp command-actions/C_IncCounterAction.hpp command-actions/C_CheckPresenceAction.hpp command-actions/C_GetExternalDataAction.hpp command-actions/C_IncVarAction.hpp command-actions/C_CheckValueAction.hpp command-actions/C_CheckOrderAction.hpp command-actions/C_SetNewSessionIdAction.hpp command-actions/C_InternalInitDoneAction.hpp command-actions/C_CheckAllMsgAction.hpp command-actions/C_AddInCallMapAction.hpp command-actions/C_SelectExternalDataLineAction.hpp command-actions/C_OpenAction.hpp command-actions/C_CloseAction.hpp command-actions/C_TransportOptionAction.hpp command-actions/C_SetBitAction.hpp command-actions/C_SetValueBitAction.hpp command-actions/C_GetExternalDataActionToMem.hpp command-actions/C_SetValueActionMethodExtern.hpp command-actions/C_InsertInMapAction.hpp command-actions/C_InsertInMapActionFromMem.hpp command-actions/C_AddDefaultInCallMapAction.hpp command-actions/C_LogAction.hpp common/Utils.hpp
	@echo "[Compiling command-actions/C_CommandActionFactory.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c command-actions/C_CommandActionFactory.cpp -o $(WORK_DIR)/C_CommandActionFactory.o

$(WORK_DIR)/C_SetNewSessionIdAction.o: command-actions/C_SetNewSessionIdAction.cpp command-actions/C_SetNewSessionIdAction.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h generator-traffic/C_CallControl.hpp
	@echo "[Compiling command-actions/C_SetNewSessionIdAction.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c command-actions/C_SetNewSessionIdAction.cpp -o $(WORK_DIR)/C_SetNewSessionIdAction.o

$(WORK_DIR)/C_AddDefaultInCallMapAction.o: command-actions/C_AddDefaultInCallMapAction.cpp command-actions/C_AddDefaultInCallMapAction.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h generator-traffic/C_CallControl.hpp common/map_t.hpp
	@echo "[Compiling command-actions/C_AddDefaultInCallMapAction.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c command-actions/C_AddDefaultInCallMapAction.cpp -o $(WORK_DIR)/C_AddDefaultInCallMapAction.o

$(WORK_DIR)/C_AddInCallMapAction.o: command-actions/C_AddInCallMapAction.cpp command-actions/C_AddInCallMapAction.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h generator-traffic/C_CallControl.hpp
	@echo "[Compiling command-actions/C_AddInCallMapAction.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c command-actions/C_AddInCallMapAction.cpp -o $(WORK_DIR)/C_AddInCallMapAction.o

$(WORK_DIR)/C_GetExternalDataAction.o: command-actions/C_GetExternalDataAction.cpp command-actions/C_GetExternalDataAction.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h
	@echo "[Compiling command-actions/C_GetExternalDataAction.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c command-actions/C_GetExternalDataAction.cpp -o $(WORK_DIR)/C_GetExternalDataAction.o

$(WORK_DIR)/C_SetValueActionMethodExtern.o: command-actions/C_SetValueActionMethodExtern.cpp command-actions/C_SetValueActionMethodExtern.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h generator-scenario/C_ScenarioControl.hpp
	@echo "[Compiling command-actions/C_SetValueActionMethodExtern.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c command-actions/C_SetValueActionMethodExtern.cpp -o $(WORK_DIR)/C_SetValueActionMethodExtern.o

$(WORK_DIR)/C_IncCounterAction.o: command-actions/C_IncCounterAction.cpp command-actions/C_IncCounterAction.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h generator-scenario/C_ScenarioControl.hpp
	@echo "[Compiling command-actions/C_IncCounterAction.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c command-actions/C_IncCounterAction.cpp -o $(WORK_DIR)/C_IncCounterAction.o

$(WORK_DIR)/C_ReStoreAction.o: command-actions/C_ReStoreAction.cpp command-actions/C_ReStoreAction.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h
	@echo "[Compiling command-actions/C_ReStoreAction.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c command-actions/C_ReStoreAction.cpp -o $(WORK_DIR)/C_ReStoreAction.o

$(WORK_DIR)/C_SetValueAction.o: command-actions/C_SetValueAction.cpp command-actions/C_SetValueAction.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h generator-scenario/C_ScenarioControl.hpp
	@echo "[Compiling command-actions/C_SetValueAction.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c command-actions/C_SetValueAction.cpp -o $(WORK_DIR)/C_SetValueAction.o

$(WORK_DIR)/C_CheckValueAction.o: command-actions/C_CheckValueAction.cpp command-actions/C_CheckValueAction.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h
	@echo "[Compiling command-actions/C_CheckValueAction.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c command-actions/C_CheckValueAction.cpp -o $(WORK_DIR)/C_CheckValueAction.o

$(WORK_DIR)/C_InternalInitDoneAction.o: command-actions/C_InternalInitDoneAction.cpp command-actions/C_InternalInitDoneAction.hpp generator-core/GeneratorTrace.hpp generator-core/GeneratorError.h
	@echo "[Compiling command-actions/C_InternalInitDoneAction.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c command-actions/C_InternalInitDoneAction.cpp -o $(WORK_DIR)/C_InternalInitDoneAction.o

$(WORK_DIR)/C_RemoteControl.o: generator-control/C_RemoteControl.cpp generator-control/C_RemoteControl.hpp generator-model/C_TransportControl.hpp common/Utils.hpp generator-core/GeneratorTrace.hpp protocol-text/C_MessageText.hpp protocol-data/ProtocolData.hpp generator-core/C_Generator.hpp generator-common/C_SemaphoreTimed.hpp common/dlfcn_t.hpp
	@echo "[Compiling generator-control/C_RemoteControl.cpp]"
	@$(CC_EXE) $(MODULE_PATH) -I$(WORK_DIR) $(CC_FLAGS_EXE) $(CC_INCLUDE_EXE) -c generator-control/C_RemoteControl.cpp -o $(WORK_DIR)/C_RemoteControl.o

