#!/usr/bin/perl
use warnings;
use strict;

my %where=(
    Gary     => "Dallas",
    Lucy     => "Exeter",
    Ian      => "Reading",
    Samantha => "Oregon"
);

delete $where{Lucy};
# VScode perl debug hides the warning produced here:
print "Lucy lives in $where{Lucy}\n";