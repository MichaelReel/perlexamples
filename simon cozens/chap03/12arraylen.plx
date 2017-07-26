#!/usr/bin/perl
use warnings;
use strict;

my @array1;
my $scalar1;
@array1 = qw(Monday Tuesday Wednesday Thursday Friday Saturday Sunday);
$scalar1 = @array1;

print "Array 1 is @array1\nScalar 1 is $scalar1\n";

my @array2;
my $scalar2;
@array2 = qw(Winter Spring Summer Autumn);
$scalar2 = @array2;

print "Array 2 is @array2\nScalar 2 is $scalar2\n";
print "---\n";

#aside
print @array1, "\n";
print "@array1\n";
print scalar @array1;

print "---\n";
for (0..$#array1) {
    print "$_: $array1[$_]\n";
}
