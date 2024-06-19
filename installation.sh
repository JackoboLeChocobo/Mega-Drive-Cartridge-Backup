#!/bin/bash

#Compilation de libopencm3
cd libopencm3
make
cd ..

#Compilation de WeAct HID Bootloader
cd WeAct_HID_Bootloader_F4x1/Cli
make
cd ../..

#Compilation du programme d'utilisation
cd projet/Software
./build.sh
cd ..

#Compilation du programme pour la carte STM32
cd Firmware
./build.sh
