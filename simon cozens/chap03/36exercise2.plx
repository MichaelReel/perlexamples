#!/usr/bin/perl
use warnings;
use strict;

my @arr = ('aa' .. 'bb');
print "@arr\n";
print "---\n";

@arr = ('a0' .. 'b9');
print "@arr\n";
print "---\n";

#aside
@arr = ('00' .. '11');
print "@arr\n";
