###############################################################################
# Copyright (c) 2019, PulseRain Technology LLC 
#
# This program is distributed under a dual license: an open source license, 
# and a commercial license. 
# 
# The open source license under which this program is distributed is the 
# GNU Public License version 3 (GPLv3).
#
# And for those who want to use this program in ways that are incompatible
# with the GPLv3, PulseRain Technology LLC offers commercial license instead.
# Please contact PulseRain Technology LLC (www.pulserain.com) for more detail.
#
###############################################################################


file delete -force work
vlib work
vmap work work

set common "../../submodules/PulseRain_RISCV_MCU/common"
set config "../../submodules/PulseRain_RISCV_MCU/common/master_platform"
set hw_loader "../../submodules/Hardware_Bootloader/source"

vlog -sv -work work +incdir+$common +incdir+$config ../../submodules/PulseRain_RISCV_MCU/submodules/FRV2100/source/mul_div/absolute_value.sv
vlog -sv -work work +incdir+$common +incdir+$config ../../submodules/PulseRain_RISCV_MCU/submodules/FRV2100/source/mul_div/long_slow_div_denom_reg.sv
vlog -sv -work work +incdir+$common +incdir+$config ../../submodules/PulseRain_RISCV_MCU/submodules/FRV2100/source/mul_div/mul_div_32.sv

vlog -work work +incdir+$common +incdir+$config ../../submodules/PulseRain_RISCV_MCU/memory/Intel/cyclone10_LP/dual_port_ram.v
vlog -work work +incdir+$common +incdir+$config ../../submodules/PulseRain_RISCV_MCU/memory/Intel/cyclone10_LP/single_port_ram.v
vlog -work work +incdir+$common +incdir+$config ../../submodules/PulseRain_RISCV_MCU/memory/Intel/cyclone10_LP/single_port_ram_8bit.v

vlog -sv -work work +incdir+$common +incdir+$config ../../submodules/PulseRain_RISCV_MCU/memory/mem_controller.sv
vlog -sv -work work +incdir+$common +incdir+$config ../../submodules/PulseRain_RISCV_MCU/memory/dram_rw_buffer.sv

vlog -work work +incdir+$common +incdir+$config ../../submodules/PulseRain_RISCV_MCU/source/PulseRain_MCU.sv

vlog -sv -work work +incdir+$common +incdir+$config ../../submodules/PulseRain_RISCV_MCU/submodules/FRV2100/source/PulseRain_Reindeer_core.sv
vlog -sv -work work +incdir+$common +incdir+$config ../../submodules/PulseRain_RISCV_MCU/submodules/FRV2100/source/Reindeer_controller.sv
vlog -sv -work work +incdir+$common +incdir+$config ../../submodules/PulseRain_RISCV_MCU/submodules/FRV2100/source/Reindeer_CSR.sv
vlog -sv -work work +incdir+$common +incdir+$config ../../submodules/PulseRain_RISCV_MCU/submodules/FRV2100/source/Reindeer_data_access.sv
vlog -sv -work work +incdir+$common +incdir+$config ../../submodules/PulseRain_RISCV_MCU/submodules/FRV2100/source/Reindeer_execution_unit.sv
vlog -sv -work work +incdir+$common +incdir+$config ../../submodules/PulseRain_RISCV_MCU/submodules/FRV2100/source/Reindeer_fetch_instruction.sv
vlog -sv -work work +incdir+$common +incdir+$config ../../submodules/PulseRain_RISCV_MCU/submodules/FRV2100/source/Reindeer_instruction_decode.sv
vlog -sv -work work +incdir+$common +incdir+$config ../../submodules/PulseRain_RISCV_MCU/submodules/FRV2100/source/Reindeer_memory.sv
vlog -sv -work work +incdir+$common +incdir+$config ../../submodules/PulseRain_RISCV_MCU/submodules/FRV2100/source/Reindeer_reg_file.sv
vlog -sv -work work +incdir+$common +incdir+$config ../../submodules/PulseRain_RISCV_MCU/submodules/FRV2100/source/Reindeer_machine_timer.sv
vlog -sv -work work +incdir+$common +incdir+$config ../../submodules/PulseRain_RISCV_MCU/submodules/FRV2100/source/Reindeer_mm_reg.sv

vlog -sv -work work +incdir+$common +incdir+$config ../../submodules/PulseRain_RISCV_MCU/peripherals/PulseRain_rtl_lib/UART/UART_TX.sv
vlog -sv -work work +incdir+$common +incdir+$config -sv ../../submodules/PulseRain_RISCV_MCU/peripherals/PulseRain_rtl_lib/UART/UART_RX.sv
vlog -sv -work work +incdir+$common +incdir+$config -sv ../../submodules/PulseRain_RISCV_MCU/peripherals/PulseRain_rtl_lib/UART/UART_RX_WITH_FIFO.sv
vlog -sv -work work +incdir+$common +incdir+$config -sv ../../submodules/PulseRain_RISCV_MCU/peripherals/PulseRain_rtl_lib/UART/UART_FIFO.sv

vlog -work work +incdir+$common +incdir+$config -sv ../../submodules/PulseRain_RISCV_MCU/peripherals/PulseRain_rtl_lib/switch_debouncer/switch_debouncer.sv

vlog -work work +incdir+$common +incdir+$config +incdir+../../submodules/PulseRain_RISCV_MCU/peripherals/i2c -sv ../../submodules/PulseRain_RISCV_MCU/peripherals/peripherals.sv



vlog -sv -work work +incdir+$common +incdir+$config ../../submodules/Hardware_Bootloader/source/CRC16_CCITT.sv
vlog -sv -work work +incdir+$common +incdir+$config ../../submodules/Hardware_Bootloader/source/debug_coprocessor.sv
vlog -sv -work work +incdir+$common +incdir+$config ../../submodules/Hardware_Bootloader/source/debug_reply.sv
vlog -sv -work work +incdir+$common +incdir+$config ../../submodules/Hardware_Bootloader/source/debug_UART.sv
vlog -sv -work work +incdir+$common +incdir+$config ../../submodules/Hardware_Bootloader/source/Serial_RS232.sv
vlog -sv -work work +incdir+$common +incdir+$config ../../submodules/Hardware_Bootloader/source/debug_coprocessor_wrapper.sv


vlog -work work  ../../cores/PLL/PLL.v
vlog -work work  ../../cores/DDIO_OUT/DDIO_OUT.v
vlog -work work  ../../cores/sdram/sdram/simulation/sdram.v

vlog -work work +incdir+$common +incdir+$config -sv ../../submodules/PulseRain_RISCV_MCU/memory/SDRAM/sdram_controller.sv
vlog -work work +incdir+$common +incdir+$config +incdir+$hw_loader -sv ../../source/master_platform.sv
vlog -work work +incdir+$common +incdir+$config +incdir+$hw_loader -sv ../../source/sdram_init_loader.sv



vlog -work work  -sv +incdir+../../testbench ../../testbench/file_compare_pkg.sv
vlog -work work  -sv +incdir+../../testbench ../../testbench/file_compare.sv
vlog -work work  -sv +incdir+../../testbench ../../testbench/single_file_compare.sv

vlog -work work  -sv +incdir+$common +incdir+$config ../../testbench/tb_RV.sv
