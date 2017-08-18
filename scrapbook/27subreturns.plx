#!/usr/bin/perl
use warnings;
use strict;

sub return_multiple {
    return 'X', 'Y', 'Z';
}


my ($A,$B,$C) = ('_')x3;
# Assigning a single value will assign to the last returned ('Z')
$C = return_multiple();
print "$A, $B, $C\n";
# _, _, Z


($A,$B,$C) = ('_')x3;
# Assigning a single value in a list will assign to the last returned ('X')
($A) = return_multiple();
print "$A, $B, $C\n";
# X, _, _


($A,$B,$C) = ('_')x3;
# Trying to assign 2 values, not in a list, will not assign anything to the first.
$A, $C = return_multiple();
print "$A, $B, $C\n";
# _, _, Z


($A,$B,$C) = ('_')x3;
# Assigning to a shorter list than the returned list, will assign in order from the start ('X', 'Y')
($A, $B) = return_multiple();
print "$A, $B, $C\n";
# X, Y, _


($A,$B,$C) = ('_')x3;
# Assigning all values should work as expected (assigns all in order - 'X', 'Y', 'Z')
($A, $B, $C) = return_multiple();
print "$A, $B, $C\n";
# X, Y, Z