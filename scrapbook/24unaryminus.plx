#!/usr/bin/perl
use warnings;
use strict;
use Data::Dumper;

print -"foo", "\n";
print -"-foo", "\n";
print -"+foo", "\n";
print -"\x{e9}", "\n"; #e acute is not in the accepted range
print -"5foo", "\n";   #same thing for 5

my %options = (
    -depth  => 5,
    -width  => 2,
    -height => 3,
);

print Dumper(\%options);
