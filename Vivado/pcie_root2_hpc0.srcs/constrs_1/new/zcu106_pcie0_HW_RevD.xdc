# ZCU106 Constrains for Both of the SSD on HPC0

# SSD1 PCIe
# reset pin for Rev C Board 
#set_property PACKAGE_PIN D12 [get_ports {peripheral_reset_0}]; 
# reset pin for Rev D Board 
set_property PACKAGE_PIN D16 [get_ports {peripheral_reset_0}]; 
set_property IOSTANDARD LVCMOS18 [get_ports {peripheral_reset_0}]

set_property PACKAGE_PIN V8 [get_ports {pcie_refclk_clk_p}];
set_property PACKAGE_PIN V7 [get_ports {pcie_refclk_clk_n}]; # GBTCLK0_M2C_N
create_clock -period 10.000 -name pcie_refclk_clk_p -waveform {0.000 5.000} [get_ports pcie_refclk_clk_p]

set_property LOC "" [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ ADVANCED.GT.GTHE4_CHANNEL && NAME =~ "*xdma_0*" }]

set_property LOC PCIE40E4_X0Y1 [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ ADVANCED.PCIE.* && NAME =~ "*xdma_0*" }]


set_property LOC GTHE4_CHANNEL_X0Y14 [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ ADVANCED.GT.GTHE4_CHANNEL && NAME =~ "*xdma_0*channel_inst[3]*" }]
set_property LOC GTHE4_CHANNEL_X0Y13 [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ ADVANCED.GT.GTHE4_CHANNEL && NAME =~ "*xdma_0*channel_inst[2]*" }]
set_property LOC GTHE4_CHANNEL_X0Y15 [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ ADVANCED.GT.GTHE4_CHANNEL && NAME =~ "*xdma_0*channel_inst[1]*" }]
set_property LOC GTHE4_CHANNEL_X0Y12 [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ ADVANCED.GT.GTHE4_CHANNEL && NAME =~ "*xdma_0*channel_inst[0]*" }]


# SSD2 PCIe
#For Rev C 
#set_property PACKAGE_PIN K19 [get_ports {peripheral_reset_1}]; 

#For Rev D 
set_property PACKAGE_PIN C17 [get_ports {peripheral_reset_1}]; 
set_property IOSTANDARD LVCMOS18 [get_ports {peripheral_reset_1}]


set_property PACKAGE_PIN T8 [get_ports {pcie_refclk2_clk_p}]; # GBTCLK1_M2C_P
set_property PACKAGE_PIN T7 [get_ports {pcie_refclk2_clk_n}]; # GBTCLK1_M2C_N
create_clock -period 10.000 -name pcie_refclk2_clk_p -waveform {0.000 5.000} [get_ports pcie_refclk2_clk_p]

set_property LOC "" [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ ADVANCED.GT.GTHE4_CHANNEL && NAME =~ "*xdma_1*" }]

set_property LOC PCIE40E4_X0Y0 [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ ADVANCED.PCIE.* && NAME =~ "*xdma_1*" }]

set_property LOC GTHE4_CHANNEL_X0Y19 [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ ADVANCED.GT.GTHE4_CHANNEL && NAME =~ "*xdma_1*channel_inst[3]*" }]
set_property LOC GTHE4_CHANNEL_X0Y17 [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ ADVANCED.GT.GTHE4_CHANNEL && NAME =~ "*xdma_1*channel_inst[2]*" }]
set_property LOC GTHE4_CHANNEL_X0Y16 [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ ADVANCED.GT.GTHE4_CHANNEL && NAME =~ "*xdma_1*channel_inst[1]*" }]
set_property LOC GTHE4_CHANNEL_X0Y18 [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ ADVANCED.GT.GTHE4_CHANNEL && NAME =~ "*xdma_1*channel_inst[0]*" }]
