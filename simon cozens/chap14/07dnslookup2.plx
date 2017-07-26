#!/usr/bin/perl
use warnings;
use strict;
use Socket;

my $address = gethostbyname('www.perl.com');
print inet_ntoa($address), "\n";

