#!/usr/bin/perl

# CREATE HASH
%perl_hash = ( 
    browser => iceweasel,
# you can also use comma instead of arrow operator
    os , linux,
);
# PRINT HASH ELEMENT
print "$perl_hash{'browser'}\n";
print "$perl_hash{'os'}\n";

# ADD ELEMENTS TO A HASH
%perl_hash2 =();
%perl_hash2 = (%perl_hash2, programming, perl);
%perl_hash2 = (%perl_hash2, "aa", "bb");

# PRINT ALL ELEMENTS
print "$perl_hash2{'programming'}\n";
print "$perl_hash2{'aa'}\n";

# print join(" ", %perl_hash2). "\n"; 

# CREATE HASH
%perl_hash = qw( 
    ssh 22
    http 80
    https 443
    telnet 23
    postgres 5432
);
 
while (($hash_key, $hash_value) = each %perl_hash ){
    print "$hash_key uses port $hash_value\n";
} 

$while_loop=5;
@array=();

# Definition of perl while loop
while ($while_loop>=0) {
       print "while loop value is:".$while_loop."\n";
       @array[$while_loop] = "xx" . $while_loop . " ";
       $while_loop--;
} 

print @array;

