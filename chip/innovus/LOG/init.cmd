#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Fri Dec  7 09:33:07 2018                
#                                                     
#######################################################

#@(#)CDS: Innovus v17.11-s080_1 (64bit) 08/04/2017 11:13 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 17.11-s080_1 NR170721-2155/17_11-UB (database version 2.30, 390.7.1) {superthreading v1.44}
#@(#)CDS: AAE 17.11-s034 (64bit) 08/04/2017 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 17.11-s053_1 () Aug  1 2017 23:31:41 ( )
#@(#)CDS: SYNTECH 17.11-s012_1 () Jul 21 2017 02:29:12 ( )
#@(#)CDS: CPE v17.11-s095
#@(#)CDS: IQRC/TQRC 16.1.1-s215 (64bit) Thu Jul  6 20:18:10 PDT 2017 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
set init_io_file encounter.io
setDistributeHost -local
setMultiCpuUsage -localCpu 1
set init_layout_view {}
set init_verilog /home/dshadoa/Desktop/BPM/chip/synth/mapped/bpm_pad.vh
set init_mmmc_file /home/dshadoa/Desktop/BPM/chip/innovus/FF/view_definition.tcl
set init_lef_file {/classes/ecen4303F18/osu_soc_3.0/lib/ami05/lib/osu05_stdcells.lef ../abstract/bpm_custom.lef}
set init_top_cell bpm_pad
set init_gnd_net VSS
set init_pwr_net VDD
init_design
um::enable_metric -on
um::push_snapshot_stack
add_tracks
setMaxRouteLayer 3
setDesignMode -process 250
floorPlan -r 1.0 0.6 40.05 40.8 40.05 42
globalNetConnect VSS -type pgpin -pin gnd -inst *
globalNetConnect VDD -type pgpin -pin vdd -inst *
globalNetConnect VDD -type tiehi
globalNetConnect VSS -type tielo
placeInstance custom 700 700 R0 -fixed
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal3 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type block_rings -around each_block -layer {top metal1 bottom metal1 left metal2 right metal2} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
addHaloToBlock 8 8 8 8 custom
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal3 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top metal1 bottom metal1 left metal2 right metal2} -width {top 14.4 bottom 14.4 left 14.4 right 14.4} -spacing {top 3.6 bottom 3.6 left 3.6 right 3.6} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setSrouteMode -allowWrongWayRoute false -viaThruToClosestRing false -extendNearestTarget false -viaConnectToShape { padring ring stripe blockring blockpin coverpin noshape blockwire corewire followpin iowire} -blockPinConnectRingPinCorners true -blockPinRouteWithPinWidth true -padRingLefConvention true -signalPinAsPG false -corePinLengthAsInstance false -treatEndcapAsCore false
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { metal1(1) metal3(3) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { metal1(1) metal3(3) } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { metal1(1) metal3(3) }
timeDesign -preplace -prefix preplace -outDir RPT
checkDesign -all
check_timing
um::pop_snapshot_stack
um::set_metric -name design.power_domains -value {}
um::set_metric -name design.instances.icg -value 0
um::set_metric -name design.area.icg -value {0 um^2}
um::get_metric -pending design.instances.register
um::set_metric -name design.instances.register -value 4
um::get_metric -pending design.area.register
um::set_metric -name design.area.register -value 3456
um::set_metric -name design.instances.power_switch -value 0
um::set_metric -name design.area.power_switch -value {0 um^2}
um::set_metric -name design.instances.iso_ls -value 0
um::set_metric -name design.area.iso_ls -value {0 um^2}
um::set_metric -name design.floorplan.image -value {boundary { data { G0.0,0.0,0.0,1500.0,1500.0,1500.0,1500.0,0.0,} fill_color {#FFFFFF} stroke_color {#002794} } macros { fixed { data { B700.05,700.05,862.65,1157.25,} fill_color {#E4F0D7} stroke_color {#000000} } } ports { data { C522.6,1460.4,2, C612.6,1460.4,2, C702.6,1460.4,2, C792.6,1460.4,2, C882.6,1460.4,2, C972.6,1460.4,2, C1062.6,1460.4,2, C1152.6,1460.4,2, C39.6,342.6,2, C39.6,432.6,2, C39.6,522.6,2, C39.6,612.6,2, C39.6,702.6,2, C39.6,792.6,2, C39.6,882.6,2, C39.6,972.6,2, C432.6,1460.4,2, C342.6,1460.4,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C0.0,0.0,2, C850.2,35.7,2, C1048.2,35.7,2, } fill_color {#CA354D} stroke_color {#CA354D} } pads { data { B300.0,1200.0,390.0,1500.0,B390.0,1200.0,480.0,1500.0,B480.0,1200.0,570.0,1500.0,B570.0,1200.0,660.0,1500.0,B660.0,1200.0,750.0,1500.0,B750.0,1200.0,840.0,1500.0,B840.0,1200.0,930.0,1500.0,B930.0,1200.0,1020.0,1500.0,B1020.0,1200.0,1110.0,1500.0,B1110.0,1200.0,1200.0,1500.0,B0.0,300.0,300.0,390.0,B0.0,390.0,300.0,480.0,B0.0,480.0,300.0,570.0,B0.0,570.0,300.0,660.0,B0.0,660.0,300.0,750.0,B0.0,750.0,300.0,840.0,B0.0,840.0,300.0,930.0,B0.0,930.0,300.0,1020.0,B804.0,0.0,894.0,300.0,B1002.0,0.0,1092.0,300.0,} fill_color {#FFFF0066} stroke_color {#FFFF00} } }
report_message -errors
get_metric -id current -uuid 26730e00 alerts
get_metric -id current -uuid 26730e00 flow.memory.instant
get_metric -id current -uuid 26730e00 flow.memory.resident.instant
get_metric -id current -uuid 26730e00 flow.memory.resident.peak.instant
get_metric -id current -uuid 26730e00 flow.tool.name.short
get_metric -id current -uuid 26730e00 flow.tool.version
get_metric -id current -uuid 26730e00 metric.version.instant
get_metric -id current -uuid 26730e00 name
get_metric -id current -uuid 26730e01 flow.memory.instant
get_metric -id current -uuid 26730e00 flow.memory
get_metric -id current -uuid 26730e01 flow.memory.resident.instant
get_metric -id current -uuid 26730e00 flow.memory.resident
get_metric -id current -uuid 26730e01 flow.memory.resident.peak.instant
get_metric -id current -uuid 26730e00 flow.memory.resident.peak
get_metric -id current -uuid 26730e01 flow.tool.name.short
get_metric -id current -uuid 26730e01 flow.tool.version
get_metric -id current -uuid 26730e01 metric.version.instant
um::enable_metric
saveDesign DBS/init.enc -compress
saveNetlist DBS/LEC/init.v.gz
