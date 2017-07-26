#!/usr/bin/perl
use warnings;
use strict;

print ("\n\ncall to system\n\n");
my $call_return = system("dir .");
print ("\nSystem call returned $call_return\n");