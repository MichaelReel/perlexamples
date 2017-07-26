#!/usr/bin/perl
use warnings;
use strict;

my $f = fork; # Program splits in two here
if (defined $f) {
    if ($f == 0) {
        print "This is the child process\n";
        exit;
    } else {
        print "This is the parent process\n";
        exit;
    }
} else {
    print "Your system doesn't support fork!\n";
}