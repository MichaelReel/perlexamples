#!/usr/bin/perl
use warnings;
use strict;

my @band = qw(Crosby Stills Nash Young);
my $ref  = \@band;
print "Band members before: @band\n";
pop @{$ref};
print "Band members after: @band\n";
print "---\n";

# Aside: Creating an array and dereferencing it can be done at once, including
# as a string deference. So the following line:
print "The time is @{[scalar localtime]} according to my clock\n";
# is equivalent to:
print "The time is ", scalar localtime, " according to my clock\n";