#!/usr/bin/perl
use warnings;
use strict;

# VSCode PerlDebug hides the "No such file or directory" warning,
# but still shows the "Main::BAD only used once" warning.

open BAD, "/temp" or die "We have a problem: $!";