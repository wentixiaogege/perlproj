#!/usr/bin/perl

# getting user input

print "Please input  Verilog netlists \n";
$user_input = <>;
# User needs to type in the full paths for the below 2 verilog files:
# /home/encounter/logic/Verilog/DTMF.v
# /home/encounter/logic/stubs.v
print $user_input;

print "Please input  Fast corner timing library \n";
$user_input = <>;
print $user_input;
# User needs to type in the following path:
# /home/encounter/timing/fast/*fast*.lib

print "Please input  Slow corner timing library \n";
$user_input = <>;
# User needs to type in the following path:
# /home/encounter/timing/slow/*slow*.lib

print "Please input  IO file \n";
$user_input = <>;
# User needs to type in the following path:
# /home/encounter/TSMC90/DTMF/dtmf.io

print "Please input  dtmf constraint file \n";
$user_input = <>;
# User needs to type in the following path:
# /home/encounter/TSMC90/DTMF/dtmf.sdc

print "Please input  lef file \n";
$user_input = <>;
# User needs to type in the following 2 paths:
# /home/encounter/TSMC90/physical/lef/all.lef
# /home/encounter/TSMC90/DTMF/physical/lef/mem.lef

print "Please input  Power names \n";
$user_input = <>;
# User needs to type in the following data:
# VDD1 VDD2 VDD3

print "Please input  Ground name \n";
$user_input = <>;
# User needs to type in the following data:
# GND