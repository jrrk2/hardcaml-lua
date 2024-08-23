sv2v -v --top=ariane_testharness --define=VERILATOR > cva6_nonsys.v \
--incdir=vendor/pulp-platform/common_cells/include/ \
--incdir=vendor/pulp-platform/common_cells/src/ \
--incdir=vendor/pulp-platform/axi/include/ \
--incdir=common/local/util/ \
--incdir=corev_apu/axi_node \
--incdir=core/cache_subsystem/hpdcache/rtl/include \
--incdir=corev_apu/register_interface/include \
vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv \
vendor/pulp-platform/fpga-support/rtl/AsyncDpRam.sv \
vendor/pulp-platform/fpga-support/rtl/AsyncThreePortRam.sv \
vendor/openhwgroup/cvfpu/src/fpnew_pkg.sv \
vendor/openhwgroup/cvfpu/src/fpnew_cast_multi.sv \
vendor/openhwgroup/cvfpu/src/fpnew_classifier.sv \
vendor/openhwgroup/cvfpu/src/fpnew_divsqrt_multi.sv \
vendor/openhwgroup/cvfpu/src/fpnew_fma_multi.sv \
vendor/openhwgroup/cvfpu/src/fpnew_fma.sv \
vendor/openhwgroup/cvfpu/src/fpnew_noncomp.sv \
vendor/openhwgroup/cvfpu/src/fpnew_opgroup_block.sv \
vendor/openhwgroup/cvfpu/src/fpnew_opgroup_fmt_slice.sv \
vendor/openhwgroup/cvfpu/src/fpnew_opgroup_multifmt_slice.sv \
vendor/openhwgroup/cvfpu/src/fpnew_rounding.sv \
vendor/openhwgroup/cvfpu/src/fpnew_top.sv \
vendor/openhwgroup/cvfpu/src/fpu_div_sqrt_mvp/hdl/defs_div_sqrt_mvp.sv \
vendor/openhwgroup/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv \
vendor/openhwgroup/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv \
vendor/openhwgroup/cvfpu/src/fpu_div_sqrt_mvp/hdl/iteration_div_sqrt_mvp.sv \
vendor/openhwgroup/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv \
vendor/openhwgroup/cvfpu/src/fpu_div_sqrt_mvp/hdl/nrbd_nrsc_mvp.sv \
vendor/openhwgroup/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv \
core/include/config_pkg.sv \
core/include/cv64a6_imafdc_sv39_config_pkg.sv \
core/include/riscv_pkg.sv \
core/include/ariane_pkg.sv \
vendor/pulp-platform/axi/src/axi_pkg.sv \
core/include/wt_cache_pkg.sv \
core/include/std_cache_pkg.sv \
core/include/instr_tracer_pkg.sv \
core/include/acc_pkg.sv \
core/include/cvxif_pkg.sv \
core/cvxif_example/include/cvxif_instr_pkg.sv \
core/cvxif_fu.sv \
core/cvxif_example/cvxif_example_coprocessor.sv \
core/cvxif_example/instr_decoder.sv \
vendor/pulp-platform/common_cells/src/cf_math_pkg.sv \
vendor/pulp-platform/common_cells/src/fifo_v3.sv \
vendor/pulp-platform/common_cells/src/lfsr.sv \
vendor/pulp-platform/common_cells/src/lfsr_8bit.sv \
vendor/pulp-platform/common_cells/src/stream_arbiter.sv \
vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv \
vendor/pulp-platform/common_cells/src/stream_mux.sv \
vendor/pulp-platform/common_cells/src/stream_demux.sv \
vendor/pulp-platform/common_cells/src/lzc.sv \
vendor/pulp-platform/common_cells/src/rr_arb_tree.sv \
vendor/pulp-platform/common_cells/src/shift_reg.sv \
vendor/pulp-platform/common_cells/src/unread.sv \
vendor/pulp-platform/common_cells/src/popcount.sv \
vendor/pulp-platform/common_cells/src/exp_backoff.sv \
vendor/pulp-platform/common_cells/src/counter.sv \
vendor/pulp-platform/common_cells/src/delta_counter.sv \
core/cva6.sv \
core/cva6_rvfi_probes.sv \
core/alu.sv \
core/fpu_wrap.sv \
core/branch_unit.sv \
core/compressed_decoder.sv \
core/controller.sv \
core/csr_buffer.sv \
core/csr_regfile.sv \
core/decoder.sv \
core/ex_stage.sv \
core/instr_realign.sv \
core/id_stage.sv \
core/issue_read_operands.sv \
core/issue_stage.sv \
core/load_unit.sv \
core/load_store_unit.sv \
core/lsu_bypass.sv \
core/mult.sv \
core/multiplier.sv \
core/serdiv.sv \
core/perf_counters.sv \
core/ariane_regfile_ff.sv \
core/ariane_regfile_fpga.sv \
core/scoreboard.sv \
core/store_buffer.sv \
core/amo_buffer.sv \
core/store_unit.sv \
core/commit_stage.sv \
core/axi_shim.sv \
core/cva6_accel_first_pass_decoder_stub.sv \
core/acc_dispatcher_corrected.sv \
core/frontend/btb.sv \
core/frontend/bht.sv \
core/frontend/ras.sv \
core/frontend/instr_scan.sv \
core/frontend/instr_queue.sv \
core/frontend/frontend.sv \
core/cache_subsystem/wt_dcache_ctrl.sv \
core/cache_subsystem/wt_dcache_mem.sv \
core/cache_subsystem/wt_dcache_missunit.sv \
core/cache_subsystem/wt_dcache_wbuffer.sv \
core/cache_subsystem/wt_dcache.sv \
core/cache_subsystem/cva6_icache.sv \
core/cache_subsystem/wt_cache_subsystem.sv \
core/cache_subsystem/wt_axi_adapter.sv \
core/cache_subsystem/tag_cmp.sv \
core/cache_subsystem/axi_adapter.sv \
core/cache_subsystem/miss_handler.sv \
core/cache_subsystem/cache_ctrl.sv \
core/cache_subsystem/cva6_icache_axi_wrapper.sv \
core/cache_subsystem/std_cache_subsystem.sv \
core/cache_subsystem/std_nbdcache.sv \
core/include/cva6_hpdcache_default_config_pkg.sv \
core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv \
core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_demux.sv \
core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv \
core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv \
core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fxarb.sv \
core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv \
core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_mux.sv \
core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_prio_1hot_encoder.sv \
core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sram.sv \
core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sram_wbyteenable.sv \
core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sram_wmask.sv \
core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_regbank_wbyteenable_1rw.sv \
core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_regbank_wmask_1rw.sv \
core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv \
core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv \
core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride_pkg.sv \
core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv \
core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride_arb.sv \
core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride_snooper.sv \
core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride_wrapper.sv \
core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv \
core/cache_subsystem/hpdcache/rtl/src/hpdcache_amo.sv \
core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv \
core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv \
core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl.sv \
core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv \
core/cache_subsystem/hpdcache/rtl/src/hpdcache_memarray.sv \
core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv \
core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv \
core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv \
core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr_to_cache_set.sv \
core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv \
core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv \
core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv \
core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv \
core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf_wrapper.sv \
core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_read_arbiter.sv \
core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv \
core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv \
core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_to_axi_read.sv \
core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_to_axi_write.sv \
core/cache_subsystem/cva6_hpdcache_subsystem.sv \
core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv \
core/cache_subsystem/cva6_hpdcache_if_adapter.sv \
core/cache_subsystem/hpdcache/rtl/src/common/macros/behav/hpdcache_sram_1rw.sv \
core/cache_subsystem/hpdcache/rtl/src/common/macros/behav/hpdcache_sram_wbyteenable_1rw.sv \
core/cache_subsystem/hpdcache/rtl/src/common/macros/behav/hpdcache_sram_wmask_1rw.sv \
core/pmp/src/pmp.sv \
core/pmp/src/pmp_entry.sv \
common/local/util/instr_tracer_if.sv \
common/local/util/instr_tracer.sv \
common/local/util/tc_sram_wrapper.sv \
vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv \
common/local/util/sram.sv \
core/mmu_sv39/mmu.sv \
core/mmu_sv39/ptw.sv \
core/mmu_sv39/tlb.sv \
core/mmu_sv32/cva6_mmu_sv32.sv \
core/mmu_sv32/cva6_ptw_sv32.sv \
core/mmu_sv32/cva6_tlb_sv32.sv \
core/mmu_sv32/cva6_shared_tlb_sv32.sv \
	  core/cva6_rvfi.sv \
	  corev_apu/tb/ariane_axi_pkg.sv \
	  corev_apu/tb/axi_intf.sv \
	  corev_apu/register_interface/src/reg_intf.sv \
	  corev_apu/tb/ariane_soc_pkg.sv \
	  corev_apu/riscv-dbg/src/dm_pkg.sv \
	  corev_apu/tb/ariane_axi_soc_pkg.sv \
	  corev_apu/src/ariane.sv \
	  corev_apu/bootrom/bootrom.sv \
	  corev_apu/clint/axi_lite_interface.sv \
	  corev_apu/clint/clint.sv \
	  corev_apu/fpga/src/axi2apb/src/axi2apb.sv \
	  corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv \
	  corev_apu/fpga/src/apb_timer/apb_timer.sv \
	  corev_apu/fpga/src/apb_timer/timer.sv \
	  corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv \
	  corev_apu/fpga/src/axi_slice/src/axi_aw_buffer.sv \
	  corev_apu/fpga/src/axi_slice/src/axi_b_buffer.sv \
	  corev_apu/fpga/src/axi_slice/src/axi_r_buffer.sv \
	  corev_apu/fpga/src/axi_slice/src/axi_single_slice.sv \
	  corev_apu/fpga/src/axi_slice/src/axi_slice.sv \
	  corev_apu/fpga/src/axi_slice/src/axi_slice_wrap.sv \
	  corev_apu/fpga/src/axi_slice/src/axi_w_buffer.sv \
	  corev_apu/src/axi_riscv_atomics/src/axi_res_tbl.sv \
	  corev_apu/src/axi_riscv_atomics/src/axi_riscv_amos.sv \
	  corev_apu/src/axi_riscv_atomics/src/axi_riscv_amos_alu.sv \
	  corev_apu/src/axi_riscv_atomics/src/axi_riscv_atomics.sv \
	  corev_apu/src/axi_riscv_atomics/src/axi_riscv_atomics_wrap.sv \
	  corev_apu/src/axi_riscv_atomics/src/axi_riscv_lrsc.sv \
	  corev_apu/src/axi_riscv_atomics/src/axi_riscv_lrsc_wrap.sv \
	  corev_apu/axi_mem_if/src/axi2mem.sv \
	  corev_apu/rv_plic/rtl/rv_plic_target.sv \
	  corev_apu/rv_plic/rtl/rv_plic_gateway.sv \
	  corev_apu/rv_plic/rtl/plic_regmap.sv \
	  corev_apu/rv_plic/rtl/plic_top.sv \
	  corev_apu/riscv-dbg/src/dmi_cdc.sv \
	  corev_apu/riscv-dbg/src/dmi_jtag.sv \
	  corev_apu/riscv-dbg/src/dmi_jtag_tap.sv \
	  corev_apu/riscv-dbg/src/dm_csrs.sv \
	  corev_apu/riscv-dbg/src/dm_mem.sv \
	  corev_apu/riscv-dbg/src/dm_sba.sv \
	  corev_apu/riscv-dbg/src/dm_top.sv \
	  corev_apu/riscv-dbg/debug_rom/debug_rom.sv \
	  corev_apu/register_interface/src/apb_to_reg.sv \
	  vendor/pulp-platform/axi/src/axi_multicut.sv \
	  vendor/pulp-platform/common_cells/src/rstgen_bypass.sv \
	  vendor/pulp-platform/common_cells/src/rstgen.sv \
	  vendor/pulp-platform/common_cells/src/addr_decode.sv \
	  vendor/pulp-platform/common_cells/src/stream_register.sv \
	  vendor/pulp-platform/axi/src/axi_cut.sv \
	  vendor/pulp-platform/axi/src/axi_join.sv \
	  vendor/pulp-platform/axi/src/axi_delayer.sv \
	  vendor/pulp-platform/axi/src/axi_to_axi_lite.sv \
	  vendor/pulp-platform/axi/src/axi_id_prepend.sv \
	  vendor/pulp-platform/axi/src/axi_atop_filter.sv \
	  vendor/pulp-platform/axi/src/axi_err_slv.sv \
	  vendor/pulp-platform/axi/src/axi_mux.sv \
	  vendor/pulp-platform/axi/src/axi_demux.sv \
	  vendor/pulp-platform/axi/src/axi_xbar.sv \
	  vendor/pulp-platform/common_cells/src/cdc_2phase.sv \
	  vendor/pulp-platform/common_cells/src/spill_register_flushable.sv \
	  vendor/pulp-platform/common_cells/src/spill_register.sv \
	  vendor/pulp-platform/common_cells/src/deprecated/fifo_v1.sv \
	  vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv \
	  vendor/pulp-platform/common_cells/src/stream_delay.sv \
	  vendor/pulp-platform/common_cells/src/lfsr_16bit.sv \
	  vendor/pulp-platform/tech_cells_generic/src/deprecated/cluster_clk_cells.sv \
	  vendor/pulp-platform/tech_cells_generic/src/deprecated/pulp_clk_cells.sv \
	  vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv \
	  corev_apu/tb/ariane_testharness.sv \
	  corev_apu/tb/ariane_peripherals.sv \
	  corev_apu/tb/rvfi_tracer.sv \
	  corev_apu/tb/common/uart.sv \
	  corev_apu/tb/common/mock_uart.sv \
