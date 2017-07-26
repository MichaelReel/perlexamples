#!/usr/bin/perl
use warnings;

#string1.plx
print "Four sevens are ". 4 * 7 ."\n";
print "---\n";

#string2.plx
print "GO! "x3, "\n";
print "---\n";

#string3.plx
print "Ba" . "na"x4, "\n";
print "---\n";

#string4.plx
#This differs slightly from the tutorial :-/
print "Ba" . "na"x4*3, "\n";
print "Ba" . "na"*4*3, "\n";
print "Ba" . "na"x(4*3), "\n";
print "---\n";
