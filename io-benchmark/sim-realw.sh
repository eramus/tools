#!/bin/sh

SECTOR_OFFSET=286744100
SECTOR_INT=204800
LENGTH=1048576

while [ $SECTOR_OFFSET -ge 389120 ]
do
    #./sim $SECTOR_OFFSET $LENGTH 1
    ./latencyw sdf1 $SECTOR_OFFSET $LENGTH
    SECTOR_OFFSET=`expr $SECTOR_OFFSET - $SECTOR_INT`
done
