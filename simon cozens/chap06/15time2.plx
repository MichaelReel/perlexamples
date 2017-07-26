#!/usr/bin/perl
use warnings;
use strict;

# Disable output buffering
$| = 1;
for (1...20) {
   print ".";
   sleep 1;
} 
print "\n";
