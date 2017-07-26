#!/usr/bin/perl
use warnings;
use strict;

my @array = (1..10);

print "Array starts as: @array\n";

foreach (@array) {
    $_++;
}

print "Array is now: @array\n";
