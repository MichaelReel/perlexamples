#!/usr/bin/perl
use warnings;

#auto1.plx
$a = 4;
$b = 10;
print "Our variables are ", $a, " and ", $b, "\n";
$b = $a++;
print "After incrementing, we have ", $a, " and ", $b, "\n";
$b = ++$a * 2;
print "Now, we have ", $a, " and ", $b, "\n";
$a = --$b + 4;
print "Finally, we have ", $a, " and ", $b, "\n";
print "---\n";

#auto2.plx
$a = "A9"; print ++$a, "\n";
$a = "bz"; print ++$a, "\n";
$a = "Zz"; print ++$a, "\n";
$a = "z9"; print ++$a, "\n";
$a = "9z"; print ++$a, "\n";
print "---\n";