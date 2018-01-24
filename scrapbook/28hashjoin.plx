#!/usr/bin/perl
use warnings;
use strict;
use Data::Dumper;

my $hashref_01 = { "One" => "1", "Two" => "2" };
my $hashref_02 = { "one" => "1", "two" => "2" };

my $hashref = {%$hashref_01, %$hashref_02};

print "hashref_01", Dumper($hashref_01);
print "hashref_02", Dumper($hashref_02);
print "hashref_01,02", Dumper($hashref);


my $hashref_01 = { "One" => "1", "Two" => "2" };
my $hashref_02 = { "One" => "01", "Two" => "02" };

my $hashref = {%$hashref_01, %$hashref_02}; # second hash takes precidence

print "hashref_01", Dumper($hashref_01);
print "hashref_02", Dumper($hashref_02);
print "hashref_01,02", Dumper($hashref);