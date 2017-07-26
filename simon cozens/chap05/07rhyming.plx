#!/usr/bin/perl
use warnings;
use strict;

my $syllable = "ink";
# Open a file that's been specified on the command line
while (<>) {
    print if /$syllable$/;
}
