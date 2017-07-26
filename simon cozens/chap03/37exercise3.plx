#!/usr/bin/perl
use warnings;
use strict;

my %where=(
    Gary     => "0123654789",
    Lucy     => "0123654788",
    Ian      => "0123654787",
    Samantha => "0123654786"
);

my @names = keys %where;

print "Please enter a name (@names):\n";
chomp(my $selection = <STDIN>);
print "Entered name $selection\n";

print "$selection : $where{$selection}\n";