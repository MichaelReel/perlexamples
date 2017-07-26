#!/usr/bin/perl
use warnings;
use strict;

# Idiom for `shift @ARGV`
my $input = shift;
my $output = shift;
open INPUT, $input or die "Couldn't open file $input: $!\n";
open OUTPUT, ">$output" or die "Couldn't open file $input: $!\n";

my @file = <INPUT>;
@file = sort @file;
print OUTPUT @file;

# Or: print OUTPUT sort <INPUT>;
