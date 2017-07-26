#!/usr/bin/perl
use warnings;
use strict;

$SIG{CHLD} = \&reaper;

my $f = fork; # Program splits in two here
if (defined $f) {
    if ($f == 0) {
        print "This is the child process\n";
        sleep 5;
        print "Child finishing after sleep\n";
        exit;
    } else {
        print "This is the parent process\n";
        sleep 10;
        print "Parent finishing after sleep";
        exit;
    }
} else {
    print "Your system doesn't support fork!\n";
}

sub reaper {
    print "CHLD Received waiting on child process.\n";
    my $child = wait;
    print "Process $child has exited cleanly \n";
    $SIG{CHLD} = \&reaper;
}

# Signals here are missing on win10.