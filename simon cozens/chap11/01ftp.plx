#!/usr/bin/perl
use warnings;
use strict;
use Net::FTP;

my $ftp = Net::FTP->new("ftp.cpan.org", Firewall=>"proxy.asidua.com:7001", Debug=>1)
    or die "Couldn't connect: $@\n";
$ftp->login("anonymous");
$ftp->cwd("/pub/CPAN");
$ftp->get("README.html");
$ftp->close;
