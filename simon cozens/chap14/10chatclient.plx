#!/usr/bin/perl
# This client prints out entire lines sent by the server, and will send an
# entire line of text when the user hits return.
use strict;
use IO::Socket;
use IO::Select;
use IO::Handle;

my $stdin = new IO::Handle;
$stdin->fdopen(fileno(STDIN), "r");

my $clientsock = IO::Socket::INET->new(
        PeerAddr => "localhost",
        PeerPort => 5000,
        Proto    => "tcp"
    );

my $sel = new IO::Select;
$sel->add($stdin);
$sel->add($clientsock);

while (1) { #loop forever
    my @readyhandles = $sel->can_read(); # Get the filehandles that are ready
    foreach my $s (@readyhandles) {      # Process each finehandle
        if ($s == $stdin) {              # The user typed something
            print $clientsock, <$s>;
        } else {                         # The server sent something
            print <$s>;
        }
    }
}