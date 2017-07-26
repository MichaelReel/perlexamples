#!/usr/bin/perl
use warnings;
use strict;

my @files = glob("*.txt");
print "Matched *l : @files\n";
while (1) {
    print "What file should I write on? ";
    $target = <STDIN>;
    chomp $target;
    if (-d $target) {
        print "No, $target is a directory.\n";
        next;
    }