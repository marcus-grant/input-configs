#!/bin/bash - 
#===============================================================================
#
#          FILE: synaptics-profile1.sh
# 
#         USAGE: ./synaptics-profile1.sh 
# 
#   DESCRIPTION: A script to tweak settings of touchpads 
#               using the synaptics driver
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: E
#       CREATED: 06/22/2017 18:21
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

synclient TapButton1=1
synclient TapButton2=3
synclient TapButton3=2
synclient VertEdgeScroll=1
synclient VertTwoFingerScroll=1
synclient HorizEdgeScroll=1
synclient HorizTwoFingerScroll=1
synclient CircularScrolling=0
synclient EmulateTwoFingerMinZ=40
synclient EmulateTwoFingerMinW=8
synclient CoastingSpeed=0
synclient FingerLow=25
synclient FingerHigh=50
synclient MaxTapTime=60
synclient PalmDetect=1
synclient PalmMinWidth=1
synclient PalmMinZ=1
