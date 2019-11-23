#!/bin/bash

rm -rf libDgn

# compile design
vlog -work libDgn +incdir+simulation +incdir+simulation/tests \
	simulation/board.v \
	simulation/sys_clk_gen.v \
	simulation/sys_clk_gen_ds.v \
	\
	example_design/xilinx_pci_exp_ep.v \
	example_design/pci_exp_64b_app.v \
	example_design/PIO_64.v \
	example_design/PIO_64_RX_ENGINE.v \
	example_design/PIO_64_TX_ENGINE.v \
	example_design/PIO_EP.v \
	example_design/PIO_EP_MEM_ACCESS.v \
	example_design/EP_MEM.v \
	example_design/PIO_TO_CTRL.v \
	example_design/PIO.v \
	\
	simulation/dsport/gtx_tx_sync_rate_v6.v \
	simulation/dsport/gtx_wrapper_v6.v \
	simulation/dsport/pcie_gtx_v6.v \
	simulation/dsport/pcie_bram_v6.v \
	simulation/dsport/pcie_brams_v6.v \
	simulation/dsport/pcie_bram_top_v6.v \
	simulation/dsport/pcie_pipe_v6.v \
	simulation/dsport/pcie_pipe_misc_v6.v \
	simulation/dsport/pcie_pipe_lane_v6.v \
	simulation/dsport/pcie_clocking_v6.v \
	simulation/dsport/pcie_reset_delay_v6.v \
	simulation/dsport/pci_exp_usrapp_rx.v \
	simulation/dsport/pci_exp_usrapp_tx.v \
	simulation/dsport/pci_exp_usrapp_com.v \
	simulation/dsport/pci_exp_usrapp_cfg.v \
	simulation/dsport/pci_exp_usrapp_pl.v \
	simulation/dsport/pcie_2_0_rport_v6.v \
	simulation/dsport/xilinx_pcie_2_0_rport_v6.v \
-l compile_design.log

rm -rf libOpt

vlib libOpt
vopt -64 +acc +notimingchecks -work libOpt -L libIP -L libIPWrapper -L libDgn board glbl -o Optboard -logfile optimize.log
