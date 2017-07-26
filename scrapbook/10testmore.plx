#!/usr/bin/perl
use warnings;
use strict;

use Test::More tests => 3;

my $foo = 5;
my $bar = 6;

ok $foo == 5, 'Foo was assigned 5.';
ok $bar == 6, 'Bar was assigned 6.';
ok $foo + $bar == 11, 'Addition works correctly.';