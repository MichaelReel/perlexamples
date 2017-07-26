#!/usr/bin/perl
use warnings;
use strict;

# Behaviours are different here.
# VSCode PerlDebug will print each dot as the seconds tick (one per line).
# CMD, PS and linux shell will normally buffer the stdout until the EOL is
# reached.

for (1...20) {
   print ".";
   sleep 1;
} 
print "\n";
