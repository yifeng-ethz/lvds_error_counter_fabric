# TCL File Generated by Component Editor 18.1
# Thu Aug 08 12:49:04 CEST 2024
# DO NOT MODIFY


# 
# avst2cntr_fab "Avalon-ST Error to Counter Interconnect" v1.0.5
# Yifeng Wang 2024.08.08.12:49:04
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module avst2cntr_fab
# 
set_module_property DESCRIPTION ""
set_module_property NAME avst2cntr_fab
set_module_property VERSION 1.0.5
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP "Mu3e Data Plane/Modules"
set_module_property AUTHOR "Yifeng Wang"
set_module_property DISPLAY_NAME "Avalon-ST Error to Counter Interconnect"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL avst2cntr_fab
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file avsterr2cntr_fab.vhd VHDL PATH avsterr2cntr_fab.vhd TOP_LEVEL_FILE
add_fileset_file logic_reduc4cnt.vhd VHDL PATH logic_reduc4cnt.vhd


# 
# parameters
# 
add_parameter ST_DATA_W NATURAL 9
set_parameter_property ST_DATA_W DEFAULT_VALUE 9
set_parameter_property ST_DATA_W DISPLAY_NAME ST_DATA_W
set_parameter_property ST_DATA_W TYPE NATURAL
set_parameter_property ST_DATA_W UNITS None
set_parameter_property ST_DATA_W ALLOWED_RANGES 0:2147483647
set_parameter_property ST_DATA_W HDL_PARAMETER true
add_parameter ST_CH_W NATURAL 3
set_parameter_property ST_CH_W DEFAULT_VALUE 3
set_parameter_property ST_CH_W DISPLAY_NAME ST_CH_W
set_parameter_property ST_CH_W TYPE NATURAL
set_parameter_property ST_CH_W UNITS None
set_parameter_property ST_CH_W ALLOWED_RANGES 0:2147483647
set_parameter_property ST_CH_W HDL_PARAMETER true
add_parameter ST_ERR_W NATURAL 3
set_parameter_property ST_ERR_W DEFAULT_VALUE 3
set_parameter_property ST_ERR_W DISPLAY_NAME ST_ERR_W
set_parameter_property ST_ERR_W TYPE NATURAL
set_parameter_property ST_ERR_W UNITS None
set_parameter_property ST_ERR_W ALLOWED_RANGES 0:2147483647
set_parameter_property ST_ERR_W HDL_PARAMETER true
add_parameter EN_LOGIC STRING OR
set_parameter_property EN_LOGIC DEFAULT_VALUE OR
set_parameter_property EN_LOGIC DISPLAY_NAME EN_LOGIC
set_parameter_property EN_LOGIC TYPE STRING
set_parameter_property EN_LOGIC UNITS None
set_parameter_property EN_LOGIC HDL_PARAMETER true
add_parameter ERR_MASK STD_LOGIC_VECTOR 1
set_parameter_property ERR_MASK DEFAULT_VALUE 1
set_parameter_property ERR_MASK DISPLAY_NAME ERR_MASK
set_parameter_property ERR_MASK WIDTH 3
set_parameter_property ERR_MASK TYPE STD_LOGIC_VECTOR
set_parameter_property ERR_MASK UNITS None
set_parameter_property ERR_MASK ALLOWED_RANGES 0:7
set_parameter_property ERR_MASK HDL_PARAMETER true
add_parameter DEBUG NATURAL 1
set_parameter_property DEBUG DEFAULT_VALUE 1
set_parameter_property DEBUG DISPLAY_NAME DEBUG
set_parameter_property DEBUG TYPE NATURAL
set_parameter_property DEBUG UNITS None
set_parameter_property DEBUG ALLOWED_RANGES 0:2147483647
set_parameter_property DEBUG HDL_PARAMETER true


# 
# display items
# 


# 
# connection point clock_sink
# 
add_interface clock_sink clock end
set_interface_property clock_sink clockRate 0
set_interface_property clock_sink ENABLED true
set_interface_property clock_sink EXPORT_OF ""
set_interface_property clock_sink PORT_NAME_MAP ""
set_interface_property clock_sink CMSIS_SVD_VARIABLES ""
set_interface_property clock_sink SVD_ADDRESS_GROUP ""

add_interface_port clock_sink i_clk clk Input 1


# 
# connection point reset_sink
# 
add_interface reset_sink reset end
set_interface_property reset_sink associatedClock clock_sink
set_interface_property reset_sink synchronousEdges DEASSERT
set_interface_property reset_sink ENABLED true
set_interface_property reset_sink EXPORT_OF ""
set_interface_property reset_sink PORT_NAME_MAP ""
set_interface_property reset_sink CMSIS_SVD_VARIABLES ""
set_interface_property reset_sink SVD_ADDRESS_GROUP ""

add_interface_port reset_sink i_rst reset Input 1


# 
# connection point counter_control_port
# 
add_interface counter_control_port conduit end
set_interface_property counter_control_port associatedClock clock_sink
set_interface_property counter_control_port associatedReset reset_sink
set_interface_property counter_control_port ENABLED true
set_interface_property counter_control_port EXPORT_OF ""
set_interface_property counter_control_port PORT_NAME_MAP ""
set_interface_property counter_control_port CMSIS_SVD_VARIABLES ""
set_interface_property counter_control_port SVD_ADDRESS_GROUP ""

add_interface_port counter_control_port o_counter_en enable Output 1
add_interface_port counter_control_port o_counter_sclr sclr Output 1


# 
# connection point avst_monitor4link
# 
add_interface avst_monitor4link avalon_streaming end
set_interface_property avst_monitor4link associatedClock clock_sink
set_interface_property avst_monitor4link associatedReset reset_sink
set_interface_property avst_monitor4link dataBitsPerSymbol 9
set_interface_property avst_monitor4link errorDescriptor ""
set_interface_property avst_monitor4link firstSymbolInHighOrderBits true
set_interface_property avst_monitor4link maxChannel 0
set_interface_property avst_monitor4link readyLatency 0
set_interface_property avst_monitor4link ENABLED true
set_interface_property avst_monitor4link EXPORT_OF ""
set_interface_property avst_monitor4link PORT_NAME_MAP ""
set_interface_property avst_monitor4link CMSIS_SVD_VARIABLES ""
set_interface_property avst_monitor4link SVD_ADDRESS_GROUP ""

add_interface_port avst_monitor4link asi_in_data data Input st_data_w
add_interface_port avst_monitor4link asi_in_error error Input st_err_w
add_interface_port avst_monitor4link asi_in_valid valid Input 1

