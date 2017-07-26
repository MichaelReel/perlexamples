#!/usr/bin/perl
use warnings;
use strict;
use IO::Socket;

my $serv = IO::Socket::INET->new(
        LocalPort => 5000,
        Listen    => 5          # Queue up no more than 5 pending clients.
    );

while (my $client = $serv->accept()) { #Somebody connected!
    print $client "The time is now: ".scalar(localtime(time()))."\n";
    close $client;
}