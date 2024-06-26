#!/bin/bash

#Dépendances
sudo apt install gcc-arm-none-eabi

#Compilation de libopencm3
cd Deps/libopencm3
make
cd ..

#Compilation de WeAct HID Bootloader
cd WeAct_HID_Bootloader_F4x1/Cli
make
cd ../../..

#Compilation du programme d'utilisation
cd Software
./build.sh
cd ..

#Compilation du programme pour la carte STM32
cd Firmware
./build.sh
