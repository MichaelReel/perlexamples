#!/usr/bin/perl
use warnings;
use strict;

my @array = (1, 3, 5, 7, 9);
my $subscript = 3;
print $array[$subscript] , "\n";
$array[$subscript] = 12;
print "---\n";

#aside
print "@array\n";
