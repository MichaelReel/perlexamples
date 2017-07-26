#!/usr/bin/perl
use warnings;
use strict;

my $subs = 1;
my $global_data = 69;

sub opt_sub {
    print "\$subs evaluates to false\n";
    print "\$global_data evaluates to $global_data\n";
}

if ($subs) { 
eval <<'EOF'
    sub opt_sub {
        print "\$subs evaluates to true\n";
        print "\$global_data evaluates to $global_data\n";
    }
EOF
}

opt_sub;