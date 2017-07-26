#!/usr/bin/perl
use warnings;
use strict;
use Net::Ping;

my $hostname = shift @ARGV;

my $p = Net::Ping->new("icmp"); # could be udp or tcp instead
print "$hostname is alive.\n" if $p->ping($hostname);
$p->close();

# Need to run in admin shell in win10. Don't forget the hostname argument.