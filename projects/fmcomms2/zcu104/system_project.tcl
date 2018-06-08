
source ../../scripts/adi_env.tcl
source $ad_hdl_dir/projects/scripts/adi_project.tcl
source $ad_hdl_dir/projects/scripts/adi_board.tcl

adi_project_xilinx fmcomms2_zcu104
adi_project_files fmcomms2_zcu104 [list \
  "system_top.v" \
  "system_constr.xdc"\
  "$ad_hdl_dir/library/xilinx/common/ad_iobuf.v" \
  "$ad_hdl_dir/projects/common/zcu104/zcu104_system_constr.xdc" ]

adi_project_run fmcomms2_zcu104
source $ad_hdl_dir/library/axi_ad9361/axi_ad9361_delay.tcl