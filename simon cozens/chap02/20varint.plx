#!/usr/bin/perl
use strict;
use warnings;

#varint1.plx
my $name = "fred";
print "My name is $name\n";
print "---\n";

#varint2.plx
my $name = "fred";
print 'My name is $name\n';
print "\n---\n";

#varint3.plx
my $name = "fred";
my $salutation = "Dear $name,";
print $salutation, "\n";

#varint4.plx
my $times = 8;
print "This is the ${times}th time.\n";
