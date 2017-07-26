#!/usr/bin/perl
use warnings;
use strict;

total(111, 107, 105, 114, 69);
total(1...100);

sub total {
    my $total=0;

    my @args = @_;
    foreach my $element (@args) {
        $total = $total+$element;
    }

    # The above should also be written:
    #     $total += $_ for @_;

    print "The total is $total\n";
}
print "---\n";

# Aside: Like print the arguments don't have to be in brackets if the
# subroutine is called after it is defined.
total 1, 2, 3, 4, 5;
