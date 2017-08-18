#!/usr/bin/perl
use strict;
use warnings;

my $in_str = "18/08 AM:18/08 PM:18/08 AD";
print "Input:\n$in_str\n";

# Regex to remove non-AD times
$in_str =~ s|\d{2}\/\d{2} [AP]M:?||g;
print "Result:\n$in_str\n\n";


my $in_str = "18/08 AM:18/08 PM:18/08 AD:21/08 AM";
print "Input:\n$in_str\n";

# Regex to remove non-AD times
$in_str =~ s|\d{2}\/\d{2} [AP]M:?||g;
print "Result:\n$in_str\n\n";


my $in_str = "18/08 AM:18/08 PM:18/08 AD:21/08 AM:21/08 PM:21/08 AD:22/08 AM:22/08 PM:22/08 AD:23/08 AM:23/08 PM:23/08 AD:24/08 AM:24/08 PM:24/08 AD:25/08 AM:25/08 PM:25/08 AD:28/08 AM:28/08 AD";
print "Input:\n$in_str\n";

# Regex to remove non-AD times
$in_str =~ s|\d{2}\/\d{2} [AP]M:?||g;
print "Result:\n$in_str\n\n";