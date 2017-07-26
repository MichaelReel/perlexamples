#!/usr/bin/perl
use warnings;
use strict;
use IO::Socket;

# Need some kind of server to accomodate/test this:
my $sock = IO::Socket::INET->new('remote.host.com:7777');
while (<$sock>) {
    print "Server: $sock\n";
    print "Response?";
    my $reponse = <STDIN>;
    # Send response back to server
    print $sock $response;
}