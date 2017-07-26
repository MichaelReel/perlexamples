#!/usr/bin/perl
use warnings;
use strict;

my $var = "some test variable";
# Match one or more characters at the end of the string
print $var =~ /(\w+)$/, "\n";


my $code1 = "some normal test code stuffs";
my $code2 = "#some commented code stuffs";
# return true if matching a line that doesn't start with a hash
print "|", $code1 !~ /^#/, "|\n";
print "|", $code2 !~ /^#/, "|\n";


$_ = "Sometimes we like to # it out. Like # or ## or ##########";
# Replace any 2 or more hashes with a single hash
s/#{2,}/#/g;
print $_, "\n";