# SPDX-FileCopyrightText: 2020 Efabless Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# SPDX-License-Identifier: Apache-2.0

# Base Configurations. Don't Touch
# section begin

set ::env(PDK) "sky130A"
set ::env(STD_CELL_LIBRARY) "sky130_fd_sc_hd"

set script_dir [file dirname [file normalize [info script]]]

set defaults_dir $script_dir
if { [info exists ::env(CARAVEL_ROOT)] } {
	set defaults_dir $::env(CARAVEL_ROOT)/openlane/user_project_wrapper
}

# YOU ARE NOT ALLOWED TO CHANGE ANY VARIABLES DEFINED IN THE FIXED WRAPPER CFGS 
source $defaults_dir/fixed_wrapper_cfgs.tcl

# YOU CAN CHANGE ANY VARIABLES DEFINED IN THE DEFAULT WRAPPER CFGS BY OVERRIDING THEM IN THIS CONFIG.TCL
source $defaults_dir/default_wrapper_cfgs.tcl

set script_dir [file dirname [file normalize [info script]]]

set ::env(DESIGN_NAME) user_project_wrapper
#section end

######################################################
# User Configurations

set defines_dir $script_dir/../user_proj/src
if { [info exists ::env(CARAVEL_ROOT)] } {
	set defines_dir $::env(CARAVEL_ROOT)/verilog/rtl
}

#set sram_dir $::env(PDK_ROOT)/open_pdks/sources/sky130_sram_macros/sky130_sram_2kbyte_1rw1r_32x512_8
set sram_dir $script_dir/src

#set extra_dir $script_dir/../user_proj/runs/RUN_2021.12.25_22.40.59/results/final
#set extra_dir $script_dir/../user_proj/runs/user_proj/results/final
set extra_dir $script_dir/../..

## Source Verilog Files
set ::env(VERILOG_FILES) "\
	$defines_dir/defines.v \
	$script_dir/src/user_project_wrapper.v"

### Black-box verilog and views
set ::env(VERILOG_FILES_BLACKBOX) "\
	$defines_dir/defines.v \
	$script_dir/../user_proj/src/user_proj.v \
	$sram_dir/sky130_sram_2kbyte_1rw1r_32x512_8.v"

set ::env(EXTRA_LEFS) "\
	$extra_dir/lef/user_proj.lef \
	$sram_dir/sky130_sram_2kbyte_1rw1r_32x512_8.lef"

set ::env(EXTRA_GDS_FILES) "\
	$extra_dir/gds/user_proj.gds \
	$sram_dir/sky130_sram_2kbyte_1rw1r_32x512_8.gds"

#set ::env(EXTRA_LIBS) "\
	$sram_dir/sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib"

set ::env(CLOCK_PORT) "wb_clk_i"
set ::env(CLOCK_PERIOD) 10
set ::env(CLOCK_TREE_SYNTH) 0

set ::env(DIODE_INSERTION_STRATEGY) 0

set ::env(FILL_INSERTION) 0

set ::env(FP_CORE_UTIL) 15
set ::env(FP_PDN_CHECK_NODES) 0
set ::env(FP_PDN_ENABLE_RAILS) 0
set ::env(FP_PDN_MACRO_HOOKS) " \
	mprj vccd1 vssd1 \
	sram vccd1 vssd1 \
	sram1 vccd1 vssd1"

set ::env(GLB_RT_MAXLAYER) 5
set ::env(GLB_RT_OBS) " \
  met2 300  2100 983.1  2516.54, \
  met3 300  2100 983.1  2516.54, \
  met4 300  2100 983.1  2516.54, \
  met2 1100 2100 1783.1 2516.54, \
  met3 1100 2100 1783.1 2516.54, \
  met4 1100 2100 1783.1 2516.54"

#set ::env(KLAYOUT_XOR_GDS) 0

set ::env(MACRO_PLACEMENT_CFG) $script_dir/macro.cfg

set ::env(MAGIC_DRC_USE_GDS) 0

set ::env(PL_TARGET_DENSITY) [ expr ($::env(FP_CORE_UTIL)+5) / 100.0 ]
set ::env(PL_RANDOM_GLB_PLACEMENT) 1
set ::env(PL_RESIZER_DESIGN_OPTIMIZATIONS) 0
set ::env(PL_RESIZER_TIMING_OPTIMIZATIONS) 0
set ::env(PL_RESIZER_BUFFER_INPUT_PORTS) 0
set ::env(PL_RESIZER_BUFFER_OUTPUT_PORTS) 0

set ::env(QUIT_ON_HOLD_VIOLATIONS) 0
set ::env(QUIT_ON_TIMING_VIOLATIONS) 0
set ::env(QUIT_ON_SLEW_VIOLATIONS) 0
set ::env(QUIT_ON_MAGIC_DRC) 0
set ::env(QUIT_ON_TR_DRC) 0
set ::env(QUIT_ON_LVS_ERROR) 0
set ::env(QUIT_ON_NEGATIVE_WNS) 0

set ::env(ROUTING_CORES) 8

set ::env(RT_MAX_LAYER) "met4"

set ::env(RUN_KLAYOUT_DRC) 0
set ::env(RUN_MAGIC_DRC) 0

set ::env(SYNTH_TOP_LEVEL) 1
set ::env(SYNTH_READ_BLACKBOX_LIB) 1

set ::env(TAP_DECAP_INSERTION) 0
