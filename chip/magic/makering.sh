#!/bin/sh

#
# Script to make ring in Magic
#
# Author: James E. Stine
# Affiliation: Oklahoma State University
#
# Usage: ./makering > ring.mag
#

# Origin of core (assuming X,Y = ORIGIN,ORIGIN)
ORIGIN=0
# Size of Macro block
X=896
Y=129
# Dinstance from core to ring
CR=6
# Dimension of M3/M2 rail >= 6 lambda
R=10
# Distance to 2nd ring
R2=6

#
# Ring 1
# Remember polygons are always prefaced by 
#   lower left corner to upper right corner
#
R1_P1_RING1_X=`expr $ORIGIN - $CR - $R`
R1_P1_RING1_Y=`expr $ORIGIN - $CR - $R`
R1_P2_RING1_X=`expr $ORIGIN + $X + $CR + $R`
R1_P2_RING1_Y=`expr $ORIGIN - $CR`

R2_P1_RING1_X=`expr $ORIGIN + $X + $CR`
R2_P1_RING1_Y=`expr $ORIGIN - $CR - $R`
R2_P2_RING1_X=`expr $ORIGIN + $X + $CR + $R`
R2_P2_RING1_Y=`expr $ORIGIN + $Y + $CR + $R`

R3_P1_RING1_X=`expr $ORIGIN - $CR - $R`
R3_P1_RING1_Y=`expr $ORIGIN + $Y + $CR`
R3_P2_RING1_X=`expr $ORIGIN + $X + $CR + $R`
R3_P2_RING1_Y=`expr $ORIGIN + $Y + $CR + $R`

R4_P1_RING1_X=`expr $ORIGIN - $CR - $R`
R4_P1_RING1_Y=`expr $ORIGIN - $CR - $R`
R4_P2_RING1_X=`expr $ORIGIN - $CR`
R4_P2_RING1_Y=`expr $ORIGIN + $Y + $CR + $R`

#
# Ring 2
# Remember polygons are always prefaced by 
#   lower left corner to upper right corner
#
R1_P1_RING2_X=`expr $ORIGIN - $CR - $R - $R - $R2`
R1_P1_RING2_Y=`expr $ORIGIN - $CR - $R - $R - $R2`
R1_P2_RING2_X=`expr $ORIGIN + $X + $CR + $R + $R + $R2`
R1_P2_RING2_Y=`expr $ORIGIN - $CR - $R - $R2`

R2_P1_RING2_X=`expr $ORIGIN + $X + $CR + $R + $R2`
R2_P1_RING2_Y=`expr $ORIGIN - $CR - $R - $R - $R2`
R2_P2_RING2_X=`expr $ORIGIN + $X + $CR + $R + $R + $R2`
R2_P2_RING2_Y=`expr $ORIGIN + $Y + $CR + $R + $R + $R2`

R3_P1_RING2_X=`expr $ORIGIN - $CR - $R - $R - $R2`
R3_P1_RING2_Y=`expr $ORIGIN + $Y + $CR  + $R + $R2`
R3_P2_RING2_X=`expr $ORIGIN + $X + $CR + $R + $R + $R2`
R3_P2_RING2_Y=`expr $ORIGIN + $Y + $CR + $R + $R + $R2`

R4_P1_RING2_X=`expr $ORIGIN - $CR - $R - $R - $R2`
R4_P1_RING2_Y=`expr $ORIGIN - $CR - $R - $R - $R2`
R4_P2_RING2_X=`expr $ORIGIN - $CR - $R - $R2`
R4_P2_RING2_Y=`expr $ORIGIN + $Y + $CR + $R + $R + $R2`


# File Generation
echo 'magic'
echo 'tech scmos'
echo 'timestamp 1322446846'
echo "<< metal2 >>"
echo "rect $R1_P1_RING1_X $R1_P1_RING1_Y $R1_P2_RING1_X $R1_P2_RING1_Y"
echo "<< metal3 >>"
echo "rect $R2_P1_RING1_X $R2_P1_RING1_Y $R2_P2_RING1_X $R2_P2_RING1_Y"
echo "<< metal2 >>"
echo "rect $R3_P1_RING1_X $R3_P1_RING1_Y $R3_P2_RING1_X $R3_P2_RING1_Y"
echo "<< metal3 >>"
echo "rect $R4_P1_RING1_X $R4_P1_RING1_Y $R4_P2_RING1_X $R4_P2_RING1_Y"
echo "<< metal2 >>"
echo "rect $R1_P1_RING2_X $R1_P1_RING2_Y $R1_P2_RING2_X $R1_P2_RING2_Y"
echo "<< metal3 >>"
echo "rect $R2_P1_RING2_X $R2_P1_RING2_Y $R2_P2_RING2_X $R2_P2_RING2_Y"
echo "<< metal2 >>"
echo "rect $R3_P1_RING2_X $R3_P1_RING2_Y $R3_P2_RING2_X $R3_P2_RING2_Y"
echo "<< metal3 >>"
echo "rect $R4_P1_RING2_X $R4_P1_RING2_Y $R4_P2_RING2_X $R4_P2_RING2_Y"
echo "<< end >>"
