#!/usr/bin/perl

use strict;
use warnings;
 
my $filename = 'report.txt';
open(my $fh, '>', $filename) or die "Could not open file '$filename' $!";
print $fh "My first report generated by perl2\n";
print $fh "My first report generated by perl2\n";
print $fh "My first report generated by perl2\n";
close $fh;
print "done\n";