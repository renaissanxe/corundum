# XDC constraints for the Xilinx VCU1525 board
# part: xcvu9p-fsgd2104-2L-e

# General configuration
set_property CFGBVS GND                                [current_design]
set_property CONFIG_VOLTAGE 1.8                        [current_design]
set_property BITSTREAM.GENERAL.COMPRESS true           [current_design]
set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN {DIV-1} [current_design]
set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR YES       [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4           [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES        [current_design]

# System clocks
# 300 MHz (DDR 0)
#set_property -dict {LOC AY37 IOSTANDARD LVDS} [get_ports clk_300mhz_0_p]
#set_property -dict {LOC AY38 IOSTANDARD LVDS} [get_ports clk_300mhz_0_n]
#create_clock -period 3.333 -name clk_300mhz_0 [get_ports clk_300mhz_0_p]

# 300 MHz (DDR 1)
#set_property -dict {LOC AW20 IOSTANDARD LVDS} [get_ports clk_300mhz_1_p]
#set_property -dict {LOC AW19 IOSTANDARD LVDS} [get_ports clk_300mhz_1_n]
#create_clock -period 3.333 -name clk_300mhz_1 [get_ports clk_300mhz_1_p]

# 300 MHz (DDR 2)
#set_property -dict {LOC F32  IOSTANDARD LVDS} [get_ports clk_300mhz_2_p]
#set_property -dict {LOC E32  IOSTANDARD LVDS} [get_ports clk_300mhz_2_n]
#create_clock -period 3.333 -name clk_300mhz_2 [get_ports clk_300mhz_2_p]

# 300 MHz (DDR 3)
#set_property -dict {LOC J16  IOSTANDARD LVDS} [get_ports clk_300mhz_3_p]
#set_property -dict {LOC H16  IOSTANDARD LVDS} [get_ports clk_300mhz_3_n]
#create_clock -period 3.333 -name clk_300mhz_3 [get_ports clk_300mhz_3_p]

# SI570 user clock
#set_property -dict {LOC AU19 IOSTANDARD LVDS} [get_ports clk_user_p]
#set_property -dict {LOC AV19 IOSTANDARD LVDS} [get_ports clk_user_n]
#create_clock -period 6.400 -name clk_user [get_ports clk_user_p]

# LEDs
#set_property -dict {LOC BC21 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports {led[0]}]
#set_property -dict {LOC BB21 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports {led[1]}]
#set_property -dict {LOC BA20 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports {led[2]}]

# Reset button
#set_property -dict {LOC AL20 IOSTANDARD LVCMOS12} [get_ports reset]

# DIP switches
#set_property -dict {LOC AN22 IOSTANDARD LVCMOS12} [get_ports {sw[0]}]
#set_property -dict {LOC AM19 IOSTANDARD LVCMOS12} [get_ports {sw[1]}]
#set_property -dict {LOC AL19 IOSTANDARD LVCMOS12} [get_ports {sw[2]}]
#set_property -dict {LOC AP20 IOSTANDARD LVCMOS12} [get_ports {sw[3]}]

# UART
#set_property -dict {LOC BB20 IOSTANDARD LVCMOS12} [get_ports uart_txd]
#set_property -dict {LOC BF18 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports uart_rxd]

# HBM
set_property PACKAGE_PIN D32 [get_ports STAT_CATTRIP]
set_property IOSTANDARD LVCMOS18 [get_ports STAT_CATTRIP]

# QSFP28 Interfaces
set_property -dict {LOC R40 } [get_ports qsfp0_mgt_refclk_1_p] ;# MGTREFCLK1P_231 from U9.18
set_property -dict {LOC R41 } [get_ports qsfp0_mgt_refclk_1_n] ;# MGTREFCLK1N_231 from U9.17
set_property -dict {LOC G32 IOSTANDARD LVCMOS18} [get_ports qsfp0_fs]
set_property -dict {LOC H32 IOSTANDARD LVCMOS18} [get_ports qsfp0_reset]



# 156.25 MHz MGT reference clock (from SI570)
#create_clock -period 6.400 -name qsfp0_mgt_refclk_0 [get_ports qsfp0_mgt_refclk_0_p]

# 156.25 MHz MGT reference clock (from SI5335, FS = 0b01)
#create_clock -period 6.400 -name qsfp0_mgt_refclk_1 [get_ports qsfp0_mgt_refclk_1_p]

# 161.1328125 MHz MGT reference clock (from SI5335, FS = 0b10)
#create_clock -period 6.206 -name qsfp0_mgt_refclk_1 [get_ports qsfp0_mgt_refclk_1_p]

set_property -dict {LOC M42 } [get_ports qsfp1_mgt_refclk_1_p] ;# MGTREFCLK1P_230 from U12.18
set_property -dict {LOC M43 } [get_ports qsfp1_mgt_refclk_1_n] ;# MGTREFCLK1N_230 from U12.17
set_property -dict {LOC G33 IOSTANDARD LVCMOS18} [get_ports qsfp1_fs]
set_property -dict {LOC H30 IOSTANDARD LVCMOS18} [get_ports qsfp1_reset]

set_property PACKAGE_PIN L54              [get_ports "qsfp0_rx1_n"]                        ;# Bank 134 - MGTYRXN0_134
set_property PACKAGE_PIN K52              [get_ports "qsfp0_rx2_n"]                        ;# Bank 134 - MGTYRXN1_134
set_property PACKAGE_PIN J54              [get_ports "qsfp0_rx3_n"]                        ;# Bank 134 - MGTYRXN2_134
set_property PACKAGE_PIN H52              [get_ports "qsfp0_rx4_n"]                        ;# Bank 134 - MGTYRXN3_134
set_property PACKAGE_PIN L53              [get_ports "qsfp0_rx1_p"]                        ;# Bank 134 - MGTYRXP0_134
set_property PACKAGE_PIN K51              [get_ports "qsfp0_rx2_p"]                        ;# Bank 134 - MGTYRXP1_134
set_property PACKAGE_PIN J53              [get_ports "qsfp0_rx3_p"]                        ;# Bank 134 - MGTYRXP2_134
set_property PACKAGE_PIN H51              [get_ports "qsfp0_rx4_p"]                        ;# Bank 134 - MGTYRXP3_134
set_property PACKAGE_PIN L49              [get_ports "qsfp0_tx1_n"]                        ;# Bank 134 - MGTYTXN0_134
set_property PACKAGE_PIN L45              [get_ports "qsfp0_tx2_n"]                        ;# Bank 134 - MGTYTXN1_134
set_property PACKAGE_PIN K47              [get_ports "qsfp0_tx3_n"]                        ;# Bank 134 - MGTYTXN2_134
set_property PACKAGE_PIN J49              [get_ports "qsfp0_tx4_n"]                        ;# Bank 134 - MGTYTXN3_134
set_property PACKAGE_PIN L48              [get_ports "qsfp0_tx1_p"]                        ;# Bank 134 - MGTYTXP0_134
set_property PACKAGE_PIN L44              [get_ports "qsfp0_tx2_p"]                        ;# Bank 134 - MGTYTXP1_134
set_property PACKAGE_PIN K46              [get_ports "qsfp0_tx3_p"]                        ;# Bank 134 - MGTYTXP2_134
set_property PACKAGE_PIN J48              [get_ports "qsfp0_tx4_p"]                        ;# Bank 134 - MGTYTXP3_134
# 156.25 MHz MGT reference clock (from SI570)
#create_clock -period 6.400 -name qsfp1_mgt_refclk_0 [get_ports qsfp1_mgt_refclk_0_p]

# 156.25 MHz MGT reference clock (from SI5335, FS = 0b01)
#create_clock -period 6.400 -name qsfp1_mgt_refclk_1 [get_ports qsfp1_mgt_refclk_1_p]

# 161.1328125 MHz MGT reference clock (from SI5335, FS = 0b10)
#create_clock -period 6.206 -name qsfp1_mgt_refclk_1 [get_ports qsfp1_mgt_refclk_1_p]

# I2C interface
#set_property -dict {LOC BF19 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports i2c_mux_reset]
set_property -dict {LOC C30 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports i2c_scl]
set_property -dict {LOC C33 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports i2c_sda]

set_property PACKAGE_PIN G54              [get_ports "qsfp1_rx1_n"]                        ;# Bank 135 - MGTYRXN0_135
set_property PACKAGE_PIN F52              [get_ports "qsfp1_rx2_n"]                        ;# Bank 135 - MGTYRXN1_135
set_property PACKAGE_PIN E54              [get_ports "qsfp1_rx3_n"]                        ;# Bank 135 - MGTYRXN2_135
set_property PACKAGE_PIN D52              [get_ports "qsfp1_rx4_n"]                        ;# Bank 135 - MGTYRXN3_135
set_property PACKAGE_PIN G53              [get_ports "qsfp1_rx1_p"]                        ;# Bank 135 - MGTYRXP0_135
set_property PACKAGE_PIN F51              [get_ports "qsfp1_rx2_p"]                        ;# Bank 135 - MGTYRXP1_135
set_property PACKAGE_PIN E53              [get_ports "qsfp1_rx3_p"]                        ;# Bank 135 - MGTYRXP2_135
set_property PACKAGE_PIN D51              [get_ports "qsfp1_rx4_p"]                        ;# Bank 135 - MGTYRXP3_135
set_property PACKAGE_PIN G49              [get_ports "qsfp1_tx1_n"]                        ;# Bank 135 - MGTYTXN0_135
set_property PACKAGE_PIN E49              [get_ports "qsfp1_tx2_n"]                        ;# Bank 135 - MGTYTXN1_135
set_property PACKAGE_PIN C49              [get_ports "qsfp1_tx3_n"]                        ;# Bank 135 - MGTYTXN2_135
set_property PACKAGE_PIN A50              [get_ports "qsfp1_tx4_n"]                        ;# Bank 135 - MGTYTXN3_135
set_property PACKAGE_PIN G48              [get_ports "qsfp1_tx1_p"]                        ;# Bank 135 - MGTYTXP0_135
set_property PACKAGE_PIN E48              [get_ports "qsfp1_tx2_p"]                        ;# Bank 135 - MGTYTXP1_135
set_property PACKAGE_PIN C48              [get_ports "qsfp1_tx3_p"]                        ;# Bank 135 - MGTYTXP2_135
set_property PACKAGE_PIN A49              [get_ports "qsfp1_tx4_p"]                        ;# Bank 135 - MGTYTXP3_135

# 100 MHz MGT reference clock
create_clock -period 10 -name pcie_mgt_refclk_1 [get_ports pcie_refclk_p]

# PCIe
set_property PACKAGE_PIN AR14             [get_ports {pcie_refclk_n} ]                        ;# Bank 225 - MGTREFCLK0N_225
set_property PACKAGE_PIN AR15             [get_ports {pcie_refclk_p} ]                        ;# Bank 225 - MGTREFCLK0P_225
set_property PACKAGE_PIN BH26             [get_ports pcie_reset_n]                          ;# Bank  67 VCCO - VCC1V8   - IO_L13P_T2L_N0_GC_QBC_67
set_property IOSTANDARD  LVCMOS18         [get_ports pcie_reset_n]                          ;# Bank  67 VCCO - VCC1V8   - IO_L13P_T2L_N0_GC_QBC_67

set_property PACKAGE_PIN BC1              [get_ports {pci_exp_rxn[15]} ]                   ;# Bank 224 - MGTYRXN0_224
set_property PACKAGE_PIN BB3              [get_ports {pci_exp_rxn[14]} ]                   ;# Bank 224 - MGTYRXN1_224
set_property PACKAGE_PIN BA1              [get_ports {pci_exp_rxn[13]} ]                   ;# Bank 224 - MGTYRXN2_224
set_property PACKAGE_PIN BA5              [get_ports {pci_exp_rxn[12]} ]                   ;# Bank 224 - MGTYRXN3_224
set_property PACKAGE_PIN BC2              [get_ports {pci_exp_rxp[15]} ]                   ;# Bank 224 - MGTYRXP0_224
set_property PACKAGE_PIN BB4              [get_ports {pci_exp_rxp[14]} ]                   ;# Bank 224 - MGTYRXP1_224
set_property PACKAGE_PIN BA2              [get_ports {pci_exp_rxp[13]} ]                   ;# Bank 224 - MGTYRXP2_224
set_property PACKAGE_PIN BA6              [get_ports {pci_exp_rxp[12]} ]                   ;# Bank 224 - MGTYRXP3_224
set_property PACKAGE_PIN BC6              [get_ports {pci_exp_txn[15]} ]                   ;# Bank 224 - MGTYTXN0_224
set_property PACKAGE_PIN BC10             [get_ports {pci_exp_txn[14]} ]                   ;# Bank 224 - MGTYTXN1_224
set_property PACKAGE_PIN BB8              [get_ports {pci_exp_txn[13]} ]                   ;# Bank 224 - MGTYTXN2_224
set_property PACKAGE_PIN BA10             [get_ports {pci_exp_txn[12]} ]                   ;# Bank 224 - MGTYTXN3_224
set_property PACKAGE_PIN BC7              [get_ports {pci_exp_txp[15]} ]                   ;# Bank 224 - MGTYTXP0_224
set_property PACKAGE_PIN BC11             [get_ports {pci_exp_txp[14]} ]                   ;# Bank 224 - MGTYTXP1_224
set_property PACKAGE_PIN BB9              [get_ports {pci_exp_txp[13]} ]                   ;# Bank 224 - MGTYTXP2_224
set_property PACKAGE_PIN BA11             [get_ports {pci_exp_txp[12]} ]                   ;# Bank 224 - MGTYTXP3_224
set_property PACKAGE_PIN AY3              [get_ports {pci_exp_rxn[11]} ]                   ;# Bank 225 - MGTYRXN0_225
set_property PACKAGE_PIN AW1              [get_ports {pci_exp_rxn[10]} ]                   ;# Bank 225 - MGTYRXN1_225
set_property PACKAGE_PIN AW5              [get_ports {pci_exp_rxn[9]} ]                    ;# Bank 225 - MGTYRXN2_225
set_property PACKAGE_PIN AV3              [get_ports {pci_exp_rxn[8]} ]                    ;# Bank 225 - MGTYRXN3_225
set_property PACKAGE_PIN AY4              [get_ports {pci_exp_rxp[11]} ]                   ;# Bank 225 - MGTYRXP0_225
set_property PACKAGE_PIN AW2              [get_ports {pci_exp_rxp[10]} ]                   ;# Bank 225 - MGTYRXP1_225
set_property PACKAGE_PIN AW6              [get_ports {pci_exp_rxp[9]} ]                    ;# Bank 225 - MGTYRXP2_225
set_property PACKAGE_PIN AV4              [get_ports {pci_exp_rxp[8]} ]                    ;# Bank 225 - MGTYRXP3_225
set_property PACKAGE_PIN AY8              [get_ports {pci_exp_txn[11]} ]                   ;# Bank 225 - MGTYTXN0_225
set_property PACKAGE_PIN AW10             [get_ports {pci_exp_txn[10]} ]                   ;# Bank 225 - MGTYTXN1_225
set_property PACKAGE_PIN AV8              [get_ports {pci_exp_txn[9]} ]                    ;# Bank 225 - MGTYTXN2_225
set_property PACKAGE_PIN AU6              [get_ports {pci_exp_txn[8]} ]                    ;# Bank 225 - MGTYTXN3_225
set_property PACKAGE_PIN AY9              [get_ports {pci_exp_txp[11]} ]                   ;# Bank 225 - MGTYTXP0_225
set_property PACKAGE_PIN AW11             [get_ports {pci_exp_txp[10]} ]                   ;# Bank 225 - MGTYTXP1_225
set_property PACKAGE_PIN AV9              [get_ports {pci_exp_txp[8]} ]                    ;# Bank 225 - MGTYTXP2_225
set_property PACKAGE_PIN AU7              [get_ports {pci_exp_txp[9]} ]                    ;# Bank 225 - MGTYTXP3_225
set_property PACKAGE_PIN AU1              [get_ports {pci_exp_rxn[7]} ]                    ;# Bank 226 - MGTYRXN0_226
set_property PACKAGE_PIN AT3              [get_ports {pci_exp_rxn[6]} ]                    ;# Bank 226 - MGTYRXN1_226
set_property PACKAGE_PIN AR1              [get_ports {pci_exp_rxn[5]} ]                    ;# Bank 226 - MGTYRXN2_226
set_property PACKAGE_PIN AP3              [get_ports {pci_exp_rxn[4]} ]                    ;# Bank 226 - MGTYRXN3_226
set_property PACKAGE_PIN AU2              [get_ports {pci_exp_rxp[7]} ]                    ;# Bank 226 - MGTYRXP0_226
set_property PACKAGE_PIN AT4              [get_ports {pci_exp_rxp[6]} ]                    ;# Bank 226 - MGTYRXP1_226
set_property PACKAGE_PIN AR2              [get_ports {pci_exp_rxp[5]} ]                    ;# Bank 226 - MGTYRXP2_226
set_property PACKAGE_PIN AP4              [get_ports {pci_exp_rxp[4]} ]                    ;# Bank 226 - MGTYRXP3_226
set_property PACKAGE_PIN AU10             [get_ports {pci_exp_txn[7]} ]                    ;# Bank 226 - MGTYTXN0_226
set_property PACKAGE_PIN AT8              [get_ports {pci_exp_txn[6]} ]                    ;# Bank 226 - MGTYTXN1_226
set_property PACKAGE_PIN AR6              [get_ports {pci_exp_txn[5]} ]                    ;# Bank 226 - MGTYTXN2_226
set_property PACKAGE_PIN AR10             [get_ports {pci_exp_txn[4]} ]                    ;# Bank 226 - MGTYTXN3_226
set_property PACKAGE_PIN AU11             [get_ports {pci_exp_txp[7]} ]                    ;# Bank 226 - MGTYTXP0_226
set_property PACKAGE_PIN AT9              [get_ports {pci_exp_txp[6]} ]                    ;# Bank 226 - MGTYTXP1_226
set_property PACKAGE_PIN AR7              [get_ports {pci_exp_txp[5]} ]                    ;# Bank 226 - MGTYTXP2_226
set_property PACKAGE_PIN AR11             [get_ports {pci_exp_txp[4]} ]                    ;# Bank 226 - MGTYTXP3_226
set_property PACKAGE_PIN AN1              [get_ports {pci_exp_rxn[3]} ]                    ;# Bank 227 - MGTYRXN0_227
set_property PACKAGE_PIN AN5              [get_ports {pci_exp_rxn[2]} ]                    ;# Bank 227 - MGTYRXN1_227
set_property PACKAGE_PIN AM3              [get_ports {pci_exp_rxn[1]} ]                    ;# Bank 227 - MGTYRXN2_227
set_property PACKAGE_PIN AL1              [get_ports {pci_exp_rxn[0]} ]                    ;# Bank 227 - MGTYRXN3_227
set_property PACKAGE_PIN AN2              [get_ports {pci_exp_rxp[3]} ]                    ;# Bank 227 - MGTYRXP0_227
set_property PACKAGE_PIN AN6              [get_ports {pci_exp_rxp[2]} ]                    ;# Bank 227 - MGTYRXP1_227
set_property PACKAGE_PIN AM4              [get_ports {pci_exp_rxp[1]} ]                    ;# Bank 227 - MGTYRXP2_227
set_property PACKAGE_PIN AL2              [get_ports {pci_exp_rxp[0]} ]                    ;# Bank 227 - MGTYRXP3_227
set_property PACKAGE_PIN AP8              [get_ports {pci_exp_txn[3]} ]                    ;# Bank 227 - MGTYTXN0_227
set_property PACKAGE_PIN AN10             [get_ports {pci_exp_txn[2]} ]                    ;# Bank 227 - MGTYTXN1_227
set_property PACKAGE_PIN AM8              [get_ports {pci_exp_txn[1]} ]                    ;# Bank 227 - MGTYTXN2_227
set_property PACKAGE_PIN AL10             [get_ports {pci_exp_txn[0]} ]                    ;# Bank 227 - MGTYTXN3_227
set_property PACKAGE_PIN AP9              [get_ports {pci_exp_txp[3]} ]                    ;# Bank 227 - MGTYTXP0_227
set_property PACKAGE_PIN AN11             [get_ports {pci_exp_txp[2]} ]                    ;# Bank 227 - MGTYTXP1_227
set_property PACKAGE_PIN AM9              [get_ports {pci_exp_txp[1]} ]                    ;# Bank 227 - MGTYTXP2_227
set_property PACKAGE_PIN AL11             [get_ports {pci_exp_txp[0]} ]                    ;# Bank 227 - MGTYTXP3_227
