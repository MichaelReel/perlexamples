#!/usr/bin/perl
use warnings;
use strict;

sub sub1 (\$$);
sub sub2 (\$$);
sub sub3 (\$$);

my $calls_made = 0;

sub1( $calls_made, 300 );

sub sub1 (\$$) {
    my $call_ref = shift;
    my $limit = shift;
    print "sub1 called\n";
    if (++$$call_ref >= $limit) {
        return;
    }
    sub2($$call_ref, $limit);
}

sub sub2 (\$$) {
    my $call_ref = shift;
    my $limit = shift;
    print "sub2 called\n";
    if (++$$call_ref >= $limit) {
        return;
    }
    sub3($$call_ref, $limit);
}

sub sub3 (\$$) {
    my $call_ref = shift;
    my $limit = shift;
    print "sub3 called\n";
    if (++$$call_ref >= $limit) {
        return;
    }
    sub1($$call_ref, $limit);
}

