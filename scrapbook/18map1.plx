#!/usr/bin/perl
use strict;
use warnings;

my @names = qw(bob anne frank jill);
my @capitalised_names = map { ucfirst $_ } @names;

foreach my $name (@capitalised_names) {
    print "$name\n";
}

print "---\n";

my @everyone = map {
    $_, $_ . "'s dog", $_ . "'s cat"
} @names;

foreach my $name (@everyone) {
    print "$name\n";
}

print "---\n";

my %lengths = map { $_ => length $_ } @names;

while (my ($name, $length) = each %lengths) {
    print "'$name' has $length characters\n";
}

