#!/usr/bin/perl
use warnings;
use strict;

$/ = "";
my $counter = 1;

while (<>) {
    print $counter++, ":";
    print ((split /\n/, $_)[0]);
    print "\n";
}

# Aside: Setting $/ to undef will force the read to take in the entire file in
# one string.

# $/ = undef
# undef $/