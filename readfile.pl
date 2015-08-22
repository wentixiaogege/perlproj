#!/usr/bin/perl
use strict;
use warnings;

# use Tie::IxHash;
 
my $filename = 'dtmf.conf';
open(my $fh, '<:encoding(UTF-8)', $filename)
  or die "Could not open file '$filename' $!";

print "************************original file**************************\n";

my %file_hash =();
my @file_keys=();
# tie my %file_hash, "Tie::IxHash"
#     or die "could not tie %file_hash";
# %perl_hash2 = (%perl_hash2, programming, perl);
# %perl_hash2 = (%perl_hash2, "aa", "bb");

# put key and value to file_hash
my $index = 0;
while (my $row = <$fh>) {
    chomp $row;

    print "$row\n";

    if($row =~ m/\((.+?)\)\s+?([\{|"].*?[\}|"])/){
        # print "$1 $2"."\n"
        %file_hash = (%file_hash, $1, $2);
        $file_keys[$index] = $1;
        $index++;
    }
}

print "\n************************test hash table**************************\n";

# $file_hash{"ui_netlist"} = '/home/encounter/logic/Verilog/DTMF.v'.'/home/encounter/logic/stubs.v';
# test file_hash
for my $k (keys %file_hash) {
    print "$k $file_hash{$k}\n";
}

print "\n************************test hash table keys**************************\n";
for(my $for_loop=0;$for_loop<$index;$for_loop++) {
       print $for_loop . "----->" . @file_keys[$for_loop]."\n";
} 

# getting user input

print "Please input  Verilog netlists \n";
$user_input = <>;
# User needs to type in the full paths for the below 2 verilog files:
# /home/encounter/logic/Verilog/DTMF.v
# /home/encounter/logic/stubs.v
print $user_input;
# ui_netlist
$file_hash{"ui_netlist"} = $user_input;

print "Please input  Fast corner timing library \n";
$user_input = <>;
print $user_input;
# User needs to type in the following path:
# /home/encounter/timing/fast/*fast*.lib
# ui_timelib,min
$file_hash{"ui_timelib,min"} = $user_input;


print "Please input  Slow corner timing library \n";
$user_input = <>;
# User needs to type in the following path:
# /home/encounter/timing/slow/*slow*.lib
# ui_timelib,max
$file_hash{"ui_timelib,max"} = $user_input;

print "Please input  IO file \n";
$user_input = <>;
# User needs to type in the following path:
# /home/encounter/TSMC90/DTMF/dtmf.io
# ui_io_file
$file_hash{"ui_io_file"} = $user_input;

print "Please input  dtmf constraint file \n";
$user_input = <>;
# User needs to type in the following path:
# /home/encounter/TSMC90/DTMF/dtmf.sdc
# ui_timingcon_file
$file_hash{"ui_timingcon_file"} = $user_input;

print "Please input  lef file \n";
$user_input = <>;
# User needs to type in the following 2 paths:
# /home/encounter/TSMC90/physical/lef/all.lef
# /home/encounter/TSMC90/DTMF/physical/lef/mem.lef
# ui_leffile
$file_hash{"ui_leffile"} = $user_input;

print "Please input  Power names \n";
$user_input = <>;
# User needs to type in the following data:
# VDD1 VDD2 VDD3
# ui_pwrnet
$file_hash{"ui_pwrnet"} = $user_input;

print "Please input  Ground name \n";
$user_input = <>;
# User needs to type in the following data:
# GND
# ui_pg_connections
$file_hash{"ui_pg_connections"} = $user_input;
