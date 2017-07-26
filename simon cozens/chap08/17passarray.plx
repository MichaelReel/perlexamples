#!/usr/bin/perl
use warnings;
use strict;

sub check_same (\@\@);

my @a = (1, 2, 3, 4, 5);
my @b = (1, 2, 4, 5, 6);
my @c = (1, 2, 3, 4, 5);
print "\@a is the same as \@b" if check_same(@a,@b);
print "\@a is the same as \@c" if check_same(@a,@c);


sub check_same (\@\@) {
    my ($ref_one, $ref_two) = @_;
    # Same size?
    return 0 unless @$ref_one == @$ref_two;
    for my $elem (0..$#$ref_one) {
        return 0 unless $ref_one->[$elem] eq $ref_two->[$elem];
    }
    # Same if we got this far
    return 1;
}
print "\n---\n";

# Aside: You can't return a group of array's directly as the array's will get
# flattened into a single array. You CAN return an array or references though.

sub return_new_arrays() {
    return ([1, 1, 2, 3, 5, 8], [2, 3, 5, 7, 11, 13]);
}
my ($ref1, $ref2) = return_new_arrays();
print "@$ref1, @$ref2\n";




