/************************************************/
/* Custom cell Abstract Generation Script 	*/
/* Author: Ivan Castellanos			*/
/* Oklahoma State University			*/
/************************************************/

/* To run Abstract Generation type:             */
/* abstract -nogui -replay abstract.il          */

/* All that needs to be changed are the bpm_custom */
/* and output_pinnames field.			    */

absSkillMode()
/**************************************/
bpm_custom = "bpm_custom"
output_pinnames = "q_0 q_1 q_2 q_3 q_4 q_5 q_6 q_7 q_8 q_9 q_10 q_11 q_12 q_13 q_14 q_15"
/**************************************/

osucells = "/classes/ecen4303F18/osu_soc_3.0/"
lefin = "/lib/ami05/abstract/osu05_stdcells.lef"
gdsin = "/flow/ami05/gds2_icfb.map"
absSetOption("NewLibraryName" bpm_custom)
absSetLibrary(bpm_custom)
absSetOption("ImportLefFiles" strcat( osucells lefin ) )
absSetOption("ImportTechLef" "true")
absImportLEF()
absSetOption("ImportGDSIIFiles" strcat( bpm_custom "." "gds") )
absSetOption("ImportGDSIILayerMapFile" strcat( osucells gdsin ) )
absSetOption("DefaultBin" "Block")
absImportGDS()

absSelectCellFrom(bpm_custom bpm_custom)
absSetBinOption("Block" "PinsTextPinMap" "(metal1 (metal1 pin)(metal1 drawing))\n(metal2 (metal2 pin)(metal2 drawing))\n(metal3 (metal3 pin)(metal3 drawing))")
absSetBinOption("Block" "PinsPowerNames" "vdd")
absSetBinOption("Block" "PinsGroundNames" "gnd")
absSetBinOption("Block" "PinsOutputNames" output_pinnames)
absSetBinOption("Block" "PinsTextManipulation" "{_([0-9]+)_} {[\\1]}")
absSetBinOption("Block" "PinsBoundaryCreate" "always")
absSetBinOption("Block" "PinsBoundaryCreate" "always")
absSetBinOption("Block" "PinsPreserveRoutingBlockages" "true")
absSetBinOption("Block" "PinsCreatePwrPinsFromRouting" "true")
absSetBinOption("Block" "PinsPwrRoutingLayers" "metal1 metal2 via via2 ")
absSetBinOption("Block" "PinsBoundarySizeTop" "4.8")
absSetBinOption("Block" "PinsBoundarySizeBottom" "4.8")
absSetBinOption("Block" "PinsBoundarySizeLeft" "4.8")
absSetBinOption("Block" "PinsBoundarySizeRight" "4.8")

absSetBinOption("Block" "AbstractAdjustRingPinsDist" "50")
absSetBinOption("Block" "AbstractSiteName" "Block")
absSetBinOption("Block" "AbstractSiteNameDefine" "Block")
absSetBinOption("Block" "AbstractBlockageDetailedLayers" "")
absSetBinOption("Block" "AbstractBlockageShrinkWrapLayers" "")
absSetBinOption("Block" "ExtractSig" "false")
absSetBinOption("Block" "AbstractAdjustPowerRailOp" "")
absSetBinOption("Block" "AbstractAdjustBoundaryPinsSig" "false")
absSetBinOption("Block" "AbstractAdjustBoundaryPinsPwr" "false")
absSetBinOption("Block" "AbstractAdjustPowerGeometryGroups" "single")
absSetBinOption("Block" "BlockageCutVia" "false")
absSetBinOption("Block" "AbstractOverlapLayerSize" "0.45")
absSetBinOption("Block" "AbstractOverlapLayerSmoothFactor" "0")
absSetBinOption("Block" "AbstractGridMode" "report")
absSetTerminalProp(bpm_custom "vdd" "shape" "ring") 
absSetTerminalProp(bpm_custom "gnd" "shape" "ring") 
absSetBinOption("Block" "AbstractBlockageDetailedLayers" "metal1 metal2")
absSetBinOption("Block" "AbstractBlockageCoverLayers" "")
absSetBinOption("Block" "ExtractPwr" "true")
absSetBinOption("Block" "ExtractNumLevelsPwr" "1")
absSetBinOption("Block" "AbstractAdjustRingPinsPwr" "true")

absSetOption("ExportLEFFile" strcat( "./" bpm_custom "." "lef") )

absPins()
absExtract()
absAbstract()
absExportLEF()
exit
