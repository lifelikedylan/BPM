# Output GDSII
#streamOut final.gds -mapFile /classes/ecen4303F18/osu_soc_3.0/flow/ami05.stacks/gds2_encounter.map -stripes 1 -units 1000 -mode ALL
streamOut final.gds -mapFile /classes/ecen4303F18/osu_soc_3.0/flow/ami05/gds2_encounter.map -stripes 1 -units 1000 -mode ALL
saveNetlist -excludeLeafCell final.v

# Output DSPF RC Data
#rcout -spf final.dspf

# Run DRC and Connection checks
verifyGeometry
verifyConnectivity -type all -noAntenna
