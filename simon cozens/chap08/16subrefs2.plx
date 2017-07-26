#!/usr/bin/perl
use warnings;
use strict;
sub increment (\$);

my $a = 5;
# Reference is automatically created for $a:
increment($a);
print $a;

sub increment (\$) {
    my $reference = shift;
    $$reference++;
}
