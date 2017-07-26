#!/usr/bin/perl
use warnings;
use strict;

sub extend_fibonacci (\@);

my @fibonacci = (1, 1);

for (0..9) {
    extend_fibonacci(@fibonacci);
}

print join(", ", @fibonacci), "\n";

sub extend_fibonacci(\@) {
    my $sequence_ref = shift;
    my $fib_value    = $$sequence_ref[-1] + $$sequence_ref[-2];
    push (@$sequence_ref, $fib_value);
}
