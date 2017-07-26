#!/usr/bin/perl
use warnings;
use strict;

use Benchmark;
my $howmany = 10000;

# Just wanted to see if this can be done with named subroutines

timethese($howmany, {
   line  => \&line_file,
   slurp => \&slurp_file,
   join  => \&join_file
});

sub line_file {
    my $file;
    open TEST, "quotes.txt" or die $!;
    while (<TEST>) { $file .= $_ }
    close TEST;
}

sub slurp_file {
    my $file;
    local undef $/;
    open TEST, "quotes.txt" or die $!;
    $file = <TEST>;
    close TEST;
}

sub join_file {
    my $file;
    open TEST, "quotes.txt" or die $!;
    $file = join "", <TEST>;
    close TEST;
}