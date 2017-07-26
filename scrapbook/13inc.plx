#!/usr/bin/perl
use warnings;
use strict;

print "Using: \n";
for (keys %INC) {
    print "$_ : $INC{$_}\n";
}
print "---\n";