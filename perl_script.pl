#!/usr/bin/perl 

use Term::ReadLine;   # Do not "use Term::ReadLine::Gnu;"
$term = new Term::ReadLine 'ProgramName';
# while ( defined ($_ = $term->readline('prompt>')) ) {
#   ...
# }
print $term;
# print "Perl Programming\n" x 10; 

print "what's your name? [John Doe]: ";
$name = <STDIN>;
chomp $name;
if (!$name)
{
    $name = "John Doe";
}
print "hello $name.\n";

$name1 = "";
if($name){
    print "not null";
}else{
    print "null";
}

my $first_name = prompt("First name: ");
my $last_name = prompt("Last name: ");
 
sub prompt {
   my ($text) = @_;
   print $text;
 
   my $answer = <STDIN>;
   chomp $answer;
   return $answer;
}