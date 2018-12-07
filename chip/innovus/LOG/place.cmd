#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Fri Dec  7 09:33:24 2018                
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
restoreDesign DBS/init.enc.dat bpm_pad
um::enable_metric -on
um::push_snapshot_stack
setDesignMode -process 250
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_place_io_pins false
place_opt_design -out_dir RPT -prefix place
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
get_metric -id current -uuid 267303dd flow.memory.instant
get_metric -id current -uuid 267303dd flow.memory.resident.instant
get_metric -id current -uuid 267303dd flow.memory.resident.peak.instant
get_metric -id current -uuid 267303dd flow.tool.name.short
get_metric -id current -uuid 267303dd flow.tool.version
get_metric -id current -uuid 267303dd metric.version.instant
get_metric -id current -uuid 267303dd name
get_metric -id current -uuid 267303de flow.memory.instant
get_metric -id current -uuid 267303dd flow.memory
get_metric -id current -uuid 267303de flow.memory.resident.instant
get_metric -id current -uuid 267303dd flow.memory.resident
get_metric -id current -uuid 267303de flow.memory.resident.peak.instant
get_metric -id current -uuid 267303dd flow.memory.resident.peak
get_metric -id current -uuid 267303de flow.tool.name.short
get_metric -id current -uuid 267303de flow.tool.version
get_metric -id current -uuid 267303de metric.version.instant
get_metric -id current -uuid 267303c2 flow.memory.instant
get_metric -id current -uuid 267303c2 flow.memory.resident.instant
get_metric -id current -uuid 267303c2 flow.memory.resident.peak.instant
get_metric -id current -uuid 267303c2 flow.tool.name.short
get_metric -id current -uuid 267303c2 flow.tool.version
get_metric -id current -uuid 267303c2 metric.version.instant
get_metric -id current -uuid 267303df alerts
get_metric -id current -uuid 267303c2 name
get_metric -id current -uuid 267303df flow.memory.instant
get_metric -id current -uuid 267303de flow.memory
get_metric -id current -uuid 267303c2 flow.memory
get_metric -id current -uuid 267303df flow.memory.resident.instant
get_metric -id current -uuid 267303de flow.memory.resident
get_metric -id current -uuid 267303c2 flow.memory.resident
get_metric -id current -uuid 267303df flow.memory.resident.peak.instant
get_metric -id current -uuid 267303de flow.memory.resident.peak
get_metric -id current -uuid 267303c2 flow.memory.resident.peak
get_metric -id current -uuid 267303df flow.tool.name.short
get_metric -id current -uuid 267303df flow.tool.version
get_metric -id current -uuid 267303df metric.version.instant
get_metric -id current -uuid 267303c6 flow.memory.instant
get_metric -id current -uuid 267303c6 flow.memory.resident.instant
get_metric -id current -uuid 267303c6 flow.memory.resident.peak.instant
get_metric -id current -uuid 267303c6 flow.tool.name.short
get_metric -id current -uuid 267303c6 flow.tool.version
get_metric -id current -uuid 267303c6 metric.version.instant
get_metric -id current -uuid 267303c0 alerts
get_metric -id current -uuid 267303c6 name
get_metric -id current -uuid 267303c0 flow.memory.instant
get_metric -id current -uuid 267303c6 flow.memory
get_metric -id current -uuid 267303c0 flow.memory.resident.instant
get_metric -id current -uuid 267303c6 flow.memory.resident
get_metric -id current -uuid 267303c0 flow.memory.resident.peak.instant
get_metric -id current -uuid 267303c6 flow.memory.resident.peak
get_metric -id current -uuid 267303c0 flow.tool.name.short
get_metric -id current -uuid 267303c0 flow.tool.version
get_metric -id current -uuid 267303c0 metric.version.instant
get_metric -id current -uuid 267303d9 alerts
get_metric -id current -uuid 267303c0 name
get_metric -id current -uuid 267303d9 flow.memory.instant
get_metric -id current -uuid 267303df flow.memory
get_metric -id current -uuid 267303c0 flow.memory
get_metric -id current -uuid 267303d9 flow.memory.resident.instant
get_metric -id current -uuid 267303df flow.memory.resident
get_metric -id current -uuid 267303c0 flow.memory.resident
get_metric -id current -uuid 267303d9 flow.memory.resident.peak.instant
get_metric -id current -uuid 267303df flow.memory.resident.peak
get_metric -id current -uuid 267303c0 flow.memory.resident.peak
get_metric -id current -uuid 267303d9 flow.tool.name.short
get_metric -id current -uuid 267303d9 flow.tool.version
get_metric -id current -uuid 267303d9 metric.version.instant
get_metric -id current -uuid 267303d9 name
get_metric -id current -uuid 267303d4 flow.memory.instant
get_metric -id current -uuid 26730e00 flow.memory
get_metric -id current -uuid 267303d9 flow.memory
get_metric -id current -uuid 267303d4 flow.memory.resident.instant
get_metric -id current -uuid 26730e00 flow.memory.resident
get_metric -id current -uuid 267303d9 flow.memory.resident
get_metric -id current -uuid 267303d4 flow.memory.resident.peak.instant
get_metric -id current -uuid 26730e00 flow.memory.resident.peak
get_metric -id current -uuid 267303d9 flow.memory.resident.peak
get_metric -id current -uuid 267303d4 flow.tool.name.short
get_metric -id current -uuid 267303d4 flow.tool.version
get_metric -id current -uuid 267303d4 metric.version.instant
um::enable_metric
saveDesign DBS/place.enc -compress
saveNetlist DBS/LEC/place.v.gz
