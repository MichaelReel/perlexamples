#!/usr/bin/perl
use warnings;
use strict;

use lib '/sites/integration/development/lib';
use BDD::Conf;

my $environment;
my $confref;
my %conf;

$confref = BDD::Conf::get_variables();
%conf = %$confref;

for (keys %conf) {
	print "$_ : $conf{$_}\n";
}