#!/usr/bin/perl
use warnings;
use strict;
use Data::Dumper;

my $timestr = "01:02:03";
my $borkstr = "01:02";
my %timehsh;

($timehsh{'hours'}, $timehsh{'minutes'}, $timehsh{'seconds'}) = split /:/, $timestr;

print $timestr, "\n";
print Dumper(\%timehsh);

%timehsh = ();
@timehsh{ qw(hours minutes seconds) } = split /:/, $borkstr;

print $borkstr, "\n";
print Dumper(\%timehsh);

my $otherhsh = {};
@$otherhsh{ qw(hours minutes seconds) } = split /:/, $timestr;

print $timestr, "\n";
print Dumper($otherhsh);