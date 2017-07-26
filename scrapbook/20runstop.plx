#!/usr/bin/perl
use warnings;
use strict;

our $sleep;
our %conf;
our $environment;
our @runner;

require '04rundef.plx';

warn "Stopping runners...\n";
for (0..$#runner) {
    `sudo pkill -f $runner[$_]`;
}