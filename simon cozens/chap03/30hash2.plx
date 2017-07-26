#!/usr/bin/perl
use warnings;
use strict;

my %where=(
    Gary     => "Dallas",
    Lucy     => "Exeter",
    Ian      => "Reading",
    Samantha => "Oregon"
);

for (keys %where) {
    print "$_ lives in $where{$_}\n";
}
print "---\n";

#aside
for (sort keys %where) {
    print "$_ lives in $where{$_}\n";
}
print "---\n";

for (each %where) {
    print "$_\n";
}
