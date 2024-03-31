#!/bin/bash

# this should work for all Pi versions supporting gpiod and the gpiofind, gpioget and gpioset tools

P1=PIN11
P2=PIN13
P3=PIN16
P4=PIN15
P5=PIN36
P6=PIN37
P1_OE=PIN12
P2_OE=PIN29
P3_OE=PIN31
P4_OE=PIN32
P5_OE=PIN33
P6_OE=PIN35


for pin in ${P1_OE} ${P2_OE} ${P3_OE} ${P4_OE} ${P5_OE} ${P6_OE} ${P1} ${P2} ${P3} ${P4} ${P5} ${P6} ; do

gpioset `gpiofind ${pin}`=1
sleep 1
gpioset `gpiofind ${pin}`=0
sleep 1
gpioset `gpiofind ${pin}`=1
sleep 1
gpioget `gpiofind ${pin}`

done
