#!/usr/bin/perl
use warnings;
use strict;

my $subs = 1;

sub opt_sub {
    print "\$subs evaluates to false\n";
}

if ($subs) {
    eval "sub opt_sub {
        print \"\\\$subs evaluates to true\n\";
    }";
}

opt_sub;