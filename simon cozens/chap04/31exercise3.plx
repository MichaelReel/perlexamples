#!/usr/bin/perl
use warnings;
use strict;

print "Enter your prime limit: ";
my $limit = <STDIN>;
my $counter = 2;
my @primes = ();

while ($counter < $limit) {
    my $is_prime = 1;
    for my $prime (@primes) {
        unless ($counter % $prime) {
            $is_prime = 0;
            last;
        }
    }
    if ($is_prime) {
        push @primes, $counter
    }
    $counter++;
}

print "primes found: @primes \n";