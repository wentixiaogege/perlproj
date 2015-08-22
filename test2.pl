#!/usr/bin/perl
$str = "I love Perl";
if($str =~ m/(Perl)/)
{
    print $1."\n"
    
}
else
{
    print "no"
}