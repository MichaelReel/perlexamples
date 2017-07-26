#!/usr/bin/perl
use warnings;
use strict;

if (1) {
    print "Hello";


my $file = shift;
if (-e $file) {
    print "File exists.\n";
}
