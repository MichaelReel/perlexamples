#!/usr/bin/perl
use warnings;
use strict;

my @array = qw(America Asia Europe Africa);
my $element;
for $element (@array) {
    print $element, "\n";
}
print "---\n";

#aside
for ("America", "Asia", "Europe", "Africa") {
    print $_, "\n";
}
print "---\n";


