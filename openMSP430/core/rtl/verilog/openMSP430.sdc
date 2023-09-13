###################################################################

# Created by write_sdc on Fri Apr  3 20:27:52 2020

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
set_driving_cell -lib_cell INVX1 [get_ports cpu_en]
set_driving_cell -lib_cell INVX1 [get_ports dbg_en]
set_driving_cell -lib_cell INVX1 [get_ports {dbg_i2c_addr[6]}]
set_driving_cell -lib_cell INVX1 [get_ports {dbg_i2c_addr[5]}]
set_driving_cell -lib_cell INVX1 [get_ports {dbg_i2c_addr[4]}]
set_driving_cell -lib_cell INVX1 [get_ports {dbg_i2c_addr[3]}]
set_driving_cell -lib_cell INVX1 [get_ports {dbg_i2c_addr[2]}]
set_driving_cell -lib_cell INVX1 [get_ports {dbg_i2c_addr[1]}]
set_driving_cell -lib_cell INVX1 [get_ports {dbg_i2c_addr[0]}]
set_driving_cell -lib_cell INVX1 [get_ports {dbg_i2c_broadcast[6]}]
set_driving_cell -lib_cell INVX1 [get_ports {dbg_i2c_broadcast[5]}]
set_driving_cell -lib_cell INVX1 [get_ports {dbg_i2c_broadcast[4]}]
set_driving_cell -lib_cell INVX1 [get_ports {dbg_i2c_broadcast[3]}]
set_driving_cell -lib_cell INVX1 [get_ports {dbg_i2c_broadcast[2]}]
set_driving_cell -lib_cell INVX1 [get_ports {dbg_i2c_broadcast[1]}]
set_driving_cell -lib_cell INVX1 [get_ports {dbg_i2c_broadcast[0]}]
set_driving_cell -lib_cell INVX1 [get_ports dbg_i2c_scl]
set_driving_cell -lib_cell INVX1 [get_ports dbg_i2c_sda_in]
set_driving_cell -lib_cell INVX1 [get_ports dbg_uart_rxd]
set_driving_cell -lib_cell INVX1 [get_ports dco_clk]
set_driving_cell -lib_cell INVX1 [get_ports {dmem_dout[15]}]
set_driving_cell -lib_cell INVX1 [get_ports {dmem_dout[14]}]
set_driving_cell -lib_cell INVX1 [get_ports {dmem_dout[13]}]
set_driving_cell -lib_cell INVX1 [get_ports {dmem_dout[12]}]
set_driving_cell -lib_cell INVX1 [get_ports {dmem_dout[11]}]
set_driving_cell -lib_cell INVX1 [get_ports {dmem_dout[10]}]
set_driving_cell -lib_cell INVX1 [get_ports {dmem_dout[9]}]
set_driving_cell -lib_cell INVX1 [get_ports {dmem_dout[8]}]
set_driving_cell -lib_cell INVX1 [get_ports {dmem_dout[7]}]
set_driving_cell -lib_cell INVX1 [get_ports {dmem_dout[6]}]
set_driving_cell -lib_cell INVX1 [get_ports {dmem_dout[5]}]
set_driving_cell -lib_cell INVX1 [get_ports {dmem_dout[4]}]
set_driving_cell -lib_cell INVX1 [get_ports {dmem_dout[3]}]
set_driving_cell -lib_cell INVX1 [get_ports {dmem_dout[2]}]
set_driving_cell -lib_cell INVX1 [get_ports {dmem_dout[1]}]
set_driving_cell -lib_cell INVX1 [get_ports {dmem_dout[0]}]
set_driving_cell -lib_cell INVX1 [get_ports {irq[13]}]
set_driving_cell -lib_cell INVX1 [get_ports {irq[12]}]
set_driving_cell -lib_cell INVX1 [get_ports {irq[11]}]
set_driving_cell -lib_cell INVX1 [get_ports {irq[10]}]
set_driving_cell -lib_cell INVX1 [get_ports {irq[9]}]
set_driving_cell -lib_cell INVX1 [get_ports {irq[8]}]
set_driving_cell -lib_cell INVX1 [get_ports {irq[7]}]
set_driving_cell -lib_cell INVX1 [get_ports {irq[6]}]
set_driving_cell -lib_cell INVX1 [get_ports {irq[5]}]
set_driving_cell -lib_cell INVX1 [get_ports {irq[4]}]
set_driving_cell -lib_cell INVX1 [get_ports {irq[3]}]
set_driving_cell -lib_cell INVX1 [get_ports {irq[2]}]
set_driving_cell -lib_cell INVX1 [get_ports {irq[1]}]
set_driving_cell -lib_cell INVX1 [get_ports {irq[0]}]
set_driving_cell -lib_cell INVX1 [get_ports lfxt_clk]
set_driving_cell -lib_cell INVX1 [get_ports {dma_addr[15]}]
set_driving_cell -lib_cell INVX1 [get_ports {dma_addr[14]}]
set_driving_cell -lib_cell INVX1 [get_ports {dma_addr[13]}]
set_driving_cell -lib_cell INVX1 [get_ports {dma_addr[12]}]
set_driving_cell -lib_cell INVX1 [get_ports {dma_addr[11]}]
set_driving_cell -lib_cell INVX1 [get_ports {dma_addr[10]}]
set_driving_cell -lib_cell INVX1 [get_ports {dma_addr[9]}]
set_driving_cell -lib_cell INVX1 [get_ports {dma_addr[8]}]
set_driving_cell -lib_cell INVX1 [get_ports {dma_addr[7]}]
set_driving_cell -lib_cell INVX1 [get_ports {dma_addr[6]}]
set_driving_cell -lib_cell INVX1 [get_ports {dma_addr[5]}]
set_driving_cell -lib_cell INVX1 [get_ports {dma_addr[4]}]
set_driving_cell -lib_cell INVX1 [get_ports {dma_addr[3]}]
set_driving_cell -lib_cell INVX1 [get_ports {dma_addr[2]}]
set_driving_cell -lib_cell INVX1 [get_ports {dma_addr[1]}]
set_driving_cell -lib_cell INVX1 [get_ports {dma_din[15]}]
set_driving_cell -lib_cell INVX1 [get_ports {dma_din[14]}]
set_driving_cell -lib_cell INVX1 [get_ports {dma_din[13]}]
set_driving_cell -lib_cell INVX1 [get_ports {dma_din[12]}]
set_driving_cell -lib_cell INVX1 [get_ports {dma_din[11]}]
set_driving_cell -lib_cell INVX1 [get_ports {dma_din[10]}]
set_driving_cell -lib_cell INVX1 [get_ports {dma_din[9]}]
set_driving_cell -lib_cell INVX1 [get_ports {dma_din[8]}]
set_driving_cell -lib_cell INVX1 [get_ports {dma_din[7]}]
set_driving_cell -lib_cell INVX1 [get_ports {dma_din[6]}]
set_driving_cell -lib_cell INVX1 [get_ports {dma_din[5]}]
set_driving_cell -lib_cell INVX1 [get_ports {dma_din[4]}]
set_driving_cell -lib_cell INVX1 [get_ports {dma_din[3]}]
set_driving_cell -lib_cell INVX1 [get_ports {dma_din[2]}]
set_driving_cell -lib_cell INVX1 [get_ports {dma_din[1]}]
set_driving_cell -lib_cell INVX1 [get_ports {dma_din[0]}]
set_driving_cell -lib_cell INVX1 [get_ports dma_en]
set_driving_cell -lib_cell INVX1 [get_ports dma_priority]
set_driving_cell -lib_cell INVX1 [get_ports {dma_we[1]}]
set_driving_cell -lib_cell INVX1 [get_ports {dma_we[0]}]
set_driving_cell -lib_cell INVX1 [get_ports dma_wkup]
set_driving_cell -lib_cell INVX1 [get_ports nmi]
set_driving_cell -lib_cell INVX1 [get_ports {per_dout[15]}]
set_driving_cell -lib_cell INVX1 [get_ports {per_dout[14]}]
set_driving_cell -lib_cell INVX1 [get_ports {per_dout[13]}]
set_driving_cell -lib_cell INVX1 [get_ports {per_dout[12]}]
set_driving_cell -lib_cell INVX1 [get_ports {per_dout[11]}]
set_driving_cell -lib_cell INVX1 [get_ports {per_dout[10]}]
set_driving_cell -lib_cell INVX1 [get_ports {per_dout[9]}]
set_driving_cell -lib_cell INVX1 [get_ports {per_dout[8]}]
set_driving_cell -lib_cell INVX1 [get_ports {per_dout[7]}]
set_driving_cell -lib_cell INVX1 [get_ports {per_dout[6]}]
set_driving_cell -lib_cell INVX1 [get_ports {per_dout[5]}]
set_driving_cell -lib_cell INVX1 [get_ports {per_dout[4]}]
set_driving_cell -lib_cell INVX1 [get_ports {per_dout[3]}]
set_driving_cell -lib_cell INVX1 [get_ports {per_dout[2]}]
set_driving_cell -lib_cell INVX1 [get_ports {per_dout[1]}]
set_driving_cell -lib_cell INVX1 [get_ports {per_dout[0]}]
set_driving_cell -lib_cell INVX1 [get_ports {pmem_dout[15]}]
set_driving_cell -lib_cell INVX1 [get_ports {pmem_dout[14]}]
set_driving_cell -lib_cell INVX1 [get_ports {pmem_dout[13]}]
set_driving_cell -lib_cell INVX1 [get_ports {pmem_dout[12]}]
set_driving_cell -lib_cell INVX1 [get_ports {pmem_dout[11]}]
set_driving_cell -lib_cell INVX1 [get_ports {pmem_dout[10]}]
set_driving_cell -lib_cell INVX1 [get_ports {pmem_dout[9]}]
set_driving_cell -lib_cell INVX1 [get_ports {pmem_dout[8]}]
set_driving_cell -lib_cell INVX1 [get_ports {pmem_dout[7]}]
set_driving_cell -lib_cell INVX1 [get_ports {pmem_dout[6]}]
set_driving_cell -lib_cell INVX1 [get_ports {pmem_dout[5]}]
set_driving_cell -lib_cell INVX1 [get_ports {pmem_dout[4]}]
set_driving_cell -lib_cell INVX1 [get_ports {pmem_dout[3]}]
set_driving_cell -lib_cell INVX1 [get_ports {pmem_dout[2]}]
set_driving_cell -lib_cell INVX1 [get_ports {pmem_dout[1]}]
set_driving_cell -lib_cell INVX1 [get_ports {pmem_dout[0]}]
set_driving_cell -lib_cell INVX1 [get_ports reset_n]
set_driving_cell -lib_cell INVX1 [get_ports scan_enable]
set_driving_cell -lib_cell INVX1 [get_ports scan_mode]
set_driving_cell -lib_cell INVX1 [get_ports wkup]
create_clock [get_ports dco_clk]  -period 50  -waveform {0 25}
set_input_delay -clock dco_clk  1  [get_ports cpu_en]
set_input_delay -clock dco_clk  1  [get_ports dbg_en]
set_input_delay -clock dco_clk  1  [get_ports {dbg_i2c_addr[6]}]
set_input_delay -clock dco_clk  1  [get_ports {dbg_i2c_addr[5]}]
set_input_delay -clock dco_clk  1  [get_ports {dbg_i2c_addr[4]}]
set_input_delay -clock dco_clk  1  [get_ports {dbg_i2c_addr[3]}]
set_input_delay -clock dco_clk  1  [get_ports {dbg_i2c_addr[2]}]
set_input_delay -clock dco_clk  1  [get_ports {dbg_i2c_addr[1]}]
set_input_delay -clock dco_clk  1  [get_ports {dbg_i2c_addr[0]}]
set_input_delay -clock dco_clk  1  [get_ports {dbg_i2c_broadcast[6]}]
set_input_delay -clock dco_clk  1  [get_ports {dbg_i2c_broadcast[5]}]
set_input_delay -clock dco_clk  1  [get_ports {dbg_i2c_broadcast[4]}]
set_input_delay -clock dco_clk  1  [get_ports {dbg_i2c_broadcast[3]}]
set_input_delay -clock dco_clk  1  [get_ports {dbg_i2c_broadcast[2]}]
set_input_delay -clock dco_clk  1  [get_ports {dbg_i2c_broadcast[1]}]
set_input_delay -clock dco_clk  1  [get_ports {dbg_i2c_broadcast[0]}]
set_input_delay -clock dco_clk  1  [get_ports dbg_i2c_scl]
set_input_delay -clock dco_clk  1  [get_ports dbg_i2c_sda_in]
set_input_delay -clock dco_clk  1  [get_ports dbg_uart_rxd]
set_input_delay -clock dco_clk  1  [get_ports {dmem_dout[15]}]
set_input_delay -clock dco_clk  1  [get_ports {dmem_dout[14]}]
set_input_delay -clock dco_clk  1  [get_ports {dmem_dout[13]}]
set_input_delay -clock dco_clk  1  [get_ports {dmem_dout[12]}]
set_input_delay -clock dco_clk  1  [get_ports {dmem_dout[11]}]
set_input_delay -clock dco_clk  1  [get_ports {dmem_dout[10]}]
set_input_delay -clock dco_clk  1  [get_ports {dmem_dout[9]}]
set_input_delay -clock dco_clk  1  [get_ports {dmem_dout[8]}]
set_input_delay -clock dco_clk  1  [get_ports {dmem_dout[7]}]
set_input_delay -clock dco_clk  1  [get_ports {dmem_dout[6]}]
set_input_delay -clock dco_clk  1  [get_ports {dmem_dout[5]}]
set_input_delay -clock dco_clk  1  [get_ports {dmem_dout[4]}]
set_input_delay -clock dco_clk  1  [get_ports {dmem_dout[3]}]
set_input_delay -clock dco_clk  1  [get_ports {dmem_dout[2]}]
set_input_delay -clock dco_clk  1  [get_ports {dmem_dout[1]}]
set_input_delay -clock dco_clk  1  [get_ports {dmem_dout[0]}]
set_input_delay -clock dco_clk  1  [get_ports {irq[13]}]
set_input_delay -clock dco_clk  1  [get_ports {irq[12]}]
set_input_delay -clock dco_clk  1  [get_ports {irq[11]}]
set_input_delay -clock dco_clk  1  [get_ports {irq[10]}]
set_input_delay -clock dco_clk  1  [get_ports {irq[9]}]
set_input_delay -clock dco_clk  1  [get_ports {irq[8]}]
set_input_delay -clock dco_clk  1  [get_ports {irq[7]}]
set_input_delay -clock dco_clk  1  [get_ports {irq[6]}]
set_input_delay -clock dco_clk  1  [get_ports {irq[5]}]
set_input_delay -clock dco_clk  1  [get_ports {irq[4]}]
set_input_delay -clock dco_clk  1  [get_ports {irq[3]}]
set_input_delay -clock dco_clk  1  [get_ports {irq[2]}]
set_input_delay -clock dco_clk  1  [get_ports {irq[1]}]
set_input_delay -clock dco_clk  1  [get_ports {irq[0]}]
set_input_delay -clock dco_clk  1  [get_ports lfxt_clk]
set_input_delay -clock dco_clk  1  [get_ports {dma_addr[15]}]
set_input_delay -clock dco_clk  1  [get_ports {dma_addr[14]}]
set_input_delay -clock dco_clk  1  [get_ports {dma_addr[13]}]
set_input_delay -clock dco_clk  1  [get_ports {dma_addr[12]}]
set_input_delay -clock dco_clk  1  [get_ports {dma_addr[11]}]
set_input_delay -clock dco_clk  1  [get_ports {dma_addr[10]}]
set_input_delay -clock dco_clk  1  [get_ports {dma_addr[9]}]
set_input_delay -clock dco_clk  1  [get_ports {dma_addr[8]}]
set_input_delay -clock dco_clk  1  [get_ports {dma_addr[7]}]
set_input_delay -clock dco_clk  1  [get_ports {dma_addr[6]}]
set_input_delay -clock dco_clk  1  [get_ports {dma_addr[5]}]
set_input_delay -clock dco_clk  1  [get_ports {dma_addr[4]}]
set_input_delay -clock dco_clk  1  [get_ports {dma_addr[3]}]
set_input_delay -clock dco_clk  1  [get_ports {dma_addr[2]}]
set_input_delay -clock dco_clk  1  [get_ports {dma_addr[1]}]
set_input_delay -clock dco_clk  1  [get_ports {dma_din[15]}]
set_input_delay -clock dco_clk  1  [get_ports {dma_din[14]}]
set_input_delay -clock dco_clk  1  [get_ports {dma_din[13]}]
set_input_delay -clock dco_clk  1  [get_ports {dma_din[12]}]
set_input_delay -clock dco_clk  1  [get_ports {dma_din[11]}]
set_input_delay -clock dco_clk  1  [get_ports {dma_din[10]}]
set_input_delay -clock dco_clk  1  [get_ports {dma_din[9]}]
set_input_delay -clock dco_clk  1  [get_ports {dma_din[8]}]
set_input_delay -clock dco_clk  1  [get_ports {dma_din[7]}]
set_input_delay -clock dco_clk  1  [get_ports {dma_din[6]}]
set_input_delay -clock dco_clk  1  [get_ports {dma_din[5]}]
set_input_delay -clock dco_clk  1  [get_ports {dma_din[4]}]
set_input_delay -clock dco_clk  1  [get_ports {dma_din[3]}]
set_input_delay -clock dco_clk  1  [get_ports {dma_din[2]}]
set_input_delay -clock dco_clk  1  [get_ports {dma_din[1]}]
set_input_delay -clock dco_clk  1  [get_ports {dma_din[0]}]
set_input_delay -clock dco_clk  1  [get_ports dma_en]
set_input_delay -clock dco_clk  1  [get_ports dma_priority]
set_input_delay -clock dco_clk  1  [get_ports {dma_we[1]}]
set_input_delay -clock dco_clk  1  [get_ports {dma_we[0]}]
set_input_delay -clock dco_clk  1  [get_ports dma_wkup]
set_input_delay -clock dco_clk  1  [get_ports nmi]
set_input_delay -clock dco_clk  1  [get_ports {per_dout[15]}]
set_input_delay -clock dco_clk  1  [get_ports {per_dout[14]}]
set_input_delay -clock dco_clk  1  [get_ports {per_dout[13]}]
set_input_delay -clock dco_clk  1  [get_ports {per_dout[12]}]
set_input_delay -clock dco_clk  1  [get_ports {per_dout[11]}]
set_input_delay -clock dco_clk  1  [get_ports {per_dout[10]}]
set_input_delay -clock dco_clk  1  [get_ports {per_dout[9]}]
set_input_delay -clock dco_clk  1  [get_ports {per_dout[8]}]
set_input_delay -clock dco_clk  1  [get_ports {per_dout[7]}]
set_input_delay -clock dco_clk  1  [get_ports {per_dout[6]}]
set_input_delay -clock dco_clk  1  [get_ports {per_dout[5]}]
set_input_delay -clock dco_clk  1  [get_ports {per_dout[4]}]
set_input_delay -clock dco_clk  1  [get_ports {per_dout[3]}]
set_input_delay -clock dco_clk  1  [get_ports {per_dout[2]}]
set_input_delay -clock dco_clk  1  [get_ports {per_dout[1]}]
set_input_delay -clock dco_clk  1  [get_ports {per_dout[0]}]
set_input_delay -clock dco_clk  1  [get_ports {pmem_dout[15]}]
set_input_delay -clock dco_clk  1  [get_ports {pmem_dout[14]}]
set_input_delay -clock dco_clk  1  [get_ports {pmem_dout[13]}]
set_input_delay -clock dco_clk  1  [get_ports {pmem_dout[12]}]
set_input_delay -clock dco_clk  1  [get_ports {pmem_dout[11]}]
set_input_delay -clock dco_clk  1  [get_ports {pmem_dout[10]}]
set_input_delay -clock dco_clk  1  [get_ports {pmem_dout[9]}]
set_input_delay -clock dco_clk  1  [get_ports {pmem_dout[8]}]
set_input_delay -clock dco_clk  1  [get_ports {pmem_dout[7]}]
set_input_delay -clock dco_clk  1  [get_ports {pmem_dout[6]}]
set_input_delay -clock dco_clk  1  [get_ports {pmem_dout[5]}]
set_input_delay -clock dco_clk  1  [get_ports {pmem_dout[4]}]
set_input_delay -clock dco_clk  1  [get_ports {pmem_dout[3]}]
set_input_delay -clock dco_clk  1  [get_ports {pmem_dout[2]}]
set_input_delay -clock dco_clk  1  [get_ports {pmem_dout[1]}]
set_input_delay -clock dco_clk  1  [get_ports {pmem_dout[0]}]
set_input_delay -clock dco_clk  1  [get_ports reset_n]
set_input_delay -clock dco_clk  1  [get_ports scan_enable]
set_input_delay -clock dco_clk  1  [get_ports scan_mode]
set_input_delay -clock dco_clk  1  [get_ports wkup]
set_output_delay -clock dco_clk  1  [get_ports aclk]
set_output_delay -clock dco_clk  1  [get_ports aclk_en]
set_output_delay -clock dco_clk  1  [get_ports dbg_freeze]
set_output_delay -clock dco_clk  1  [get_ports dbg_i2c_sda_out]
set_output_delay -clock dco_clk  1  [get_ports dbg_uart_txd]
set_output_delay -clock dco_clk  1  [get_ports dco_enable]
set_output_delay -clock dco_clk  1  [get_ports dco_wkup]
set_output_delay -clock dco_clk  1  [get_ports {dmem_addr[7]}]
set_output_delay -clock dco_clk  1  [get_ports {dmem_addr[6]}]
set_output_delay -clock dco_clk  1  [get_ports {dmem_addr[5]}]
set_output_delay -clock dco_clk  1  [get_ports {dmem_addr[4]}]
set_output_delay -clock dco_clk  1  [get_ports {dmem_addr[3]}]
set_output_delay -clock dco_clk  1  [get_ports {dmem_addr[2]}]
set_output_delay -clock dco_clk  1  [get_ports {dmem_addr[1]}]
set_output_delay -clock dco_clk  1  [get_ports {dmem_addr[0]}]
set_output_delay -clock dco_clk  1  [get_ports dmem_cen]
set_output_delay -clock dco_clk  1  [get_ports {dmem_din[15]}]
set_output_delay -clock dco_clk  1  [get_ports {dmem_din[14]}]
set_output_delay -clock dco_clk  1  [get_ports {dmem_din[13]}]
set_output_delay -clock dco_clk  1  [get_ports {dmem_din[12]}]
set_output_delay -clock dco_clk  1  [get_ports {dmem_din[11]}]
set_output_delay -clock dco_clk  1  [get_ports {dmem_din[10]}]
set_output_delay -clock dco_clk  1  [get_ports {dmem_din[9]}]
set_output_delay -clock dco_clk  1  [get_ports {dmem_din[8]}]
set_output_delay -clock dco_clk  1  [get_ports {dmem_din[7]}]
set_output_delay -clock dco_clk  1  [get_ports {dmem_din[6]}]
set_output_delay -clock dco_clk  1  [get_ports {dmem_din[5]}]
set_output_delay -clock dco_clk  1  [get_ports {dmem_din[4]}]
set_output_delay -clock dco_clk  1  [get_ports {dmem_din[3]}]
set_output_delay -clock dco_clk  1  [get_ports {dmem_din[2]}]
set_output_delay -clock dco_clk  1  [get_ports {dmem_din[1]}]
set_output_delay -clock dco_clk  1  [get_ports {dmem_din[0]}]
set_output_delay -clock dco_clk  1  [get_ports {dmem_wen[1]}]
set_output_delay -clock dco_clk  1  [get_ports {dmem_wen[0]}]
set_output_delay -clock dco_clk  1  [get_ports {irq_acc[13]}]
set_output_delay -clock dco_clk  1  [get_ports {irq_acc[12]}]
set_output_delay -clock dco_clk  1  [get_ports {irq_acc[11]}]
set_output_delay -clock dco_clk  1  [get_ports {irq_acc[10]}]
set_output_delay -clock dco_clk  1  [get_ports {irq_acc[9]}]
set_output_delay -clock dco_clk  1  [get_ports {irq_acc[8]}]
set_output_delay -clock dco_clk  1  [get_ports {irq_acc[7]}]
set_output_delay -clock dco_clk  1  [get_ports {irq_acc[6]}]
set_output_delay -clock dco_clk  1  [get_ports {irq_acc[5]}]
set_output_delay -clock dco_clk  1  [get_ports {irq_acc[4]}]
set_output_delay -clock dco_clk  1  [get_ports {irq_acc[3]}]
set_output_delay -clock dco_clk  1  [get_ports {irq_acc[2]}]
set_output_delay -clock dco_clk  1  [get_ports {irq_acc[1]}]
set_output_delay -clock dco_clk  1  [get_ports {irq_acc[0]}]
set_output_delay -clock dco_clk  1  [get_ports lfxt_enable]
set_output_delay -clock dco_clk  1  [get_ports lfxt_wkup]
set_output_delay -clock dco_clk  1  [get_ports mclk]
set_output_delay -clock dco_clk  1  [get_ports {dma_dout[15]}]
set_output_delay -clock dco_clk  1  [get_ports {dma_dout[14]}]
set_output_delay -clock dco_clk  1  [get_ports {dma_dout[13]}]
set_output_delay -clock dco_clk  1  [get_ports {dma_dout[12]}]
set_output_delay -clock dco_clk  1  [get_ports {dma_dout[11]}]
set_output_delay -clock dco_clk  1  [get_ports {dma_dout[10]}]
set_output_delay -clock dco_clk  1  [get_ports {dma_dout[9]}]
set_output_delay -clock dco_clk  1  [get_ports {dma_dout[8]}]
set_output_delay -clock dco_clk  1  [get_ports {dma_dout[7]}]
set_output_delay -clock dco_clk  1  [get_ports {dma_dout[6]}]
set_output_delay -clock dco_clk  1  [get_ports {dma_dout[5]}]
set_output_delay -clock dco_clk  1  [get_ports {dma_dout[4]}]
set_output_delay -clock dco_clk  1  [get_ports {dma_dout[3]}]
set_output_delay -clock dco_clk  1  [get_ports {dma_dout[2]}]
set_output_delay -clock dco_clk  1  [get_ports {dma_dout[1]}]
set_output_delay -clock dco_clk  1  [get_ports {dma_dout[0]}]
set_output_delay -clock dco_clk  1  [get_ports dma_ready]
set_output_delay -clock dco_clk  1  [get_ports dma_resp]
set_output_delay -clock dco_clk  1  [get_ports {per_addr[13]}]
set_output_delay -clock dco_clk  1  [get_ports {per_addr[12]}]
set_output_delay -clock dco_clk  1  [get_ports {per_addr[11]}]
set_output_delay -clock dco_clk  1  [get_ports {per_addr[10]}]
set_output_delay -clock dco_clk  1  [get_ports {per_addr[9]}]
set_output_delay -clock dco_clk  1  [get_ports {per_addr[8]}]
set_output_delay -clock dco_clk  1  [get_ports {per_addr[7]}]
set_output_delay -clock dco_clk  1  [get_ports {per_addr[6]}]
set_output_delay -clock dco_clk  1  [get_ports {per_addr[5]}]
set_output_delay -clock dco_clk  1  [get_ports {per_addr[4]}]
set_output_delay -clock dco_clk  1  [get_ports {per_addr[3]}]
set_output_delay -clock dco_clk  1  [get_ports {per_addr[2]}]
set_output_delay -clock dco_clk  1  [get_ports {per_addr[1]}]
set_output_delay -clock dco_clk  1  [get_ports {per_addr[0]}]
set_output_delay -clock dco_clk  1  [get_ports {per_din[15]}]
set_output_delay -clock dco_clk  1  [get_ports {per_din[14]}]
set_output_delay -clock dco_clk  1  [get_ports {per_din[13]}]
set_output_delay -clock dco_clk  1  [get_ports {per_din[12]}]
set_output_delay -clock dco_clk  1  [get_ports {per_din[11]}]
set_output_delay -clock dco_clk  1  [get_ports {per_din[10]}]
set_output_delay -clock dco_clk  1  [get_ports {per_din[9]}]
set_output_delay -clock dco_clk  1  [get_ports {per_din[8]}]
set_output_delay -clock dco_clk  1  [get_ports {per_din[7]}]
set_output_delay -clock dco_clk  1  [get_ports {per_din[6]}]
set_output_delay -clock dco_clk  1  [get_ports {per_din[5]}]
set_output_delay -clock dco_clk  1  [get_ports {per_din[4]}]
set_output_delay -clock dco_clk  1  [get_ports {per_din[3]}]
set_output_delay -clock dco_clk  1  [get_ports {per_din[2]}]
set_output_delay -clock dco_clk  1  [get_ports {per_din[1]}]
set_output_delay -clock dco_clk  1  [get_ports {per_din[0]}]
set_output_delay -clock dco_clk  1  [get_ports per_en]
set_output_delay -clock dco_clk  1  [get_ports {per_we[1]}]
set_output_delay -clock dco_clk  1  [get_ports {per_we[0]}]
set_output_delay -clock dco_clk  1  [get_ports {pmem_addr[10]}]
set_output_delay -clock dco_clk  1  [get_ports {pmem_addr[9]}]
set_output_delay -clock dco_clk  1  [get_ports {pmem_addr[8]}]
set_output_delay -clock dco_clk  1  [get_ports {pmem_addr[7]}]
set_output_delay -clock dco_clk  1  [get_ports {pmem_addr[6]}]
set_output_delay -clock dco_clk  1  [get_ports {pmem_addr[5]}]
set_output_delay -clock dco_clk  1  [get_ports {pmem_addr[4]}]
set_output_delay -clock dco_clk  1  [get_ports {pmem_addr[3]}]
set_output_delay -clock dco_clk  1  [get_ports {pmem_addr[2]}]
set_output_delay -clock dco_clk  1  [get_ports {pmem_addr[1]}]
set_output_delay -clock dco_clk  1  [get_ports {pmem_addr[0]}]
set_output_delay -clock dco_clk  1  [get_ports pmem_cen]
set_output_delay -clock dco_clk  1  [get_ports {pmem_din[15]}]
set_output_delay -clock dco_clk  1  [get_ports {pmem_din[14]}]
set_output_delay -clock dco_clk  1  [get_ports {pmem_din[13]}]
set_output_delay -clock dco_clk  1  [get_ports {pmem_din[12]}]
set_output_delay -clock dco_clk  1  [get_ports {pmem_din[11]}]
set_output_delay -clock dco_clk  1  [get_ports {pmem_din[10]}]
set_output_delay -clock dco_clk  1  [get_ports {pmem_din[9]}]
set_output_delay -clock dco_clk  1  [get_ports {pmem_din[8]}]
set_output_delay -clock dco_clk  1  [get_ports {pmem_din[7]}]
set_output_delay -clock dco_clk  1  [get_ports {pmem_din[6]}]
set_output_delay -clock dco_clk  1  [get_ports {pmem_din[5]}]
set_output_delay -clock dco_clk  1  [get_ports {pmem_din[4]}]
set_output_delay -clock dco_clk  1  [get_ports {pmem_din[3]}]
set_output_delay -clock dco_clk  1  [get_ports {pmem_din[2]}]
set_output_delay -clock dco_clk  1  [get_ports {pmem_din[1]}]
set_output_delay -clock dco_clk  1  [get_ports {pmem_din[0]}]
set_output_delay -clock dco_clk  1  [get_ports {pmem_wen[1]}]
set_output_delay -clock dco_clk  1  [get_ports {pmem_wen[0]}]
set_output_delay -clock dco_clk  1  [get_ports puc_rst]
set_output_delay -clock dco_clk  1  [get_ports smclk]
set_output_delay -clock dco_clk  1  [get_ports smclk_en]