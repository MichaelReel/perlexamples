#!/usr/bin/perl
use warnings;
use strict;

open FILE, "nlexample.txt" or die $!;
my $lineno = 1;

# Idiom for `while (defined ($_ = <FILE>))`
while (<FILE>) {
    # Has a newline from the file
    print $lineno++, ": $_";
}

# Or:
# print $lineno++, ": $_" while <FILE>
