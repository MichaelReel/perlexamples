#!/usr/bin/perl
use warnings;
use strict;

my @array = (68, 101, 114, 111, 117);
my $ref = \@array;
${$ref}[0] = 100;
print "Array is now : @array\n";

# Aside: Can also be done with anonymous data:
$ref = [68, 101, 114, 111, 117];
${$ref}[0] = 100;
print "Array is now : @array\n";
