#!/usr/bin/perl
use warnings;
use strict;

my $calls_made = 0;

sub1();

sub sub1 {
    print "sub1 called\n";
    if (++$calls_made >= 300) {
        return;
    }
    sub2();
}

sub sub2 {
    print "sub2 called\n";
    if (++$calls_made >= 300) {
        return;
    }
    sub3();
}

sub sub3 {
    print "sub3 called\n";
    if (++$calls_made >= 300) {
        return;
    }
    sub1();
}
