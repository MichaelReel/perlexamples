#!/usr/bin/perl
use warnings;
use strict;

my %hash = ( 
    1 => "January",    2 => "February", 3 => "March",     4 => "April", 
    5 => "May",        6 => "June",     7 => "July",      8 => "August", 
    9 => "September", 10 => "October", 11 => "November", 12 => "December"
);

my $href = \%hash;
for (keys %$href) {
    print "Key: ", $_, "\t";
    print "Hash: ",$hash{$_}, "\t";
    print "Ref: ",$$href{$_}, "\n";
}

# Lines 12 and 15 above used the longer notation in the previous hash example.
# This example has simply removed the brackets { and }.
# So  %{$href}     has become %$href
# and ${$href}{$_} has become $$href{$_}

# It's also possible to use the -> notation. For example
#    $$href{$_} 
# could also be written
#    $href->{$_}

# This notation allows a reference to an array of references defined
my $ref = [ 1, 2, [ 10, 20 ] ];
# Rather than:
print ${${$ref}[2]}[1], "\n";
# We can get the last element of the last element using, e.g:
print ${$ref ->[2]}[1], "\n";
# Or:
print ${$ref}[2] -> [1], "\n";
# OR more simply:
print $ref -> [2] -> [1], "\n";
# Further, between sets of brackets, the arrow is optional:
print $ref -> [2][1], "\n";