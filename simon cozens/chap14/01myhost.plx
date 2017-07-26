#!/usr/bin/perl
use warnings;
use strict;
use Sys::Hostname;

my $host = `hostname`;
if ($!) {
    print "There was an error calling hostname: $!\n";
    $host = hostname();
    unless ($host) {
        die "I five up!\n";
    }
} else {
    chomp $host;
}
print "I think your host is $host\n";