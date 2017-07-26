#!/usr/bin/perl
use warnings;
use strict;

my ($value, $from, $to, $rate, %rates);
%rates = (
    pounds          => 1,
    dollars         => 1.6,
    marks           => 3.0,
    "french francs" => 10.0,
    yen             => 174.8,
    "swiss francs"  => 2.43,
    drachma         => 492.3,
    euro            => 1.5
);

$to = $from = "";

until (exists $rates{$from}) {
    print "Enter your starting currency: ";
    chomp($from = <STDIN>);
    print "I don't know anything about $from as a currency\n"
        unless exists $rates{$from};
}

until (exists $rates{$to}) {
    print "Enter your target currency: ";
    chomp($to = <STDIN>);
    print "I don't know anything about $to as a currency\n"
        unless exists $rates{$to};
}

print "Enter your amount: ";
chomp($value = <STDIN>);

$rate = $rates{$to} / $rates{$from};

print "$value $from is ",$value*$rate," $to.\n";
