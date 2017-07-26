#!/usr/bin/perl
use warnings;
use strict;
use Config;

unless ($Config{sig_name} && $Config{sig_num}) {
    die "No signals on this system?";
}

my @names   = split ' ', $Config{sig_name};
my @numbers = split ' ', $Config{sig_num};
my @signals;

while (@names) {
    my $name   = pop @names;
    my $number = pop @numbers;
    $signals[$number] = $name;
}

for (0..$#signals) {
    print "$_ -> $signals[$_]\t" if $signals[$_];
    print "\n" unless $_ % 5;
}
print "\n";