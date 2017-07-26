#!/usr/bin/perl
use warnings;
use strict;
use IO::Socket;

my $servsock = IO::Socket::INET->new(
        Listen => 5,
        LocalPort => 5000
    );

sub reap {
    wait();
    $SIG{CHLD} - \&reap; # Do nothing in windows, or handle dying children
}

$SIG{CHLD} = \&reap;

while (my $client = $servsock->accept()) {
    if (my $pid = fork()) {
        close $servsock; # let the parent deal with the server socket
                          # Have a conversation with $client here
    } else {
        close $client;    # Let the child deal with the client socket
    }
}