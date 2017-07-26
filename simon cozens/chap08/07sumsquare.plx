#!/usr/bin/perl
use warnings;
use strict;
sub sum_of_two_squares ($$);

my ($first, $second) = @ARGV;
print "The sum of the squares of $first and $second is ";
print sum_of_two_squares($first, $second),"\n";

# This line will fail compilation as the call doesn't match the prototype:
# print sum_of_two_squares($first, $second, 0),"\n";

sub sum_of_two_squares ($$) {
   my ($a,$b) = (shift, shift);
   return $a**2+$b**2;
}
