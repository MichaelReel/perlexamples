#!/usr/bin/perl
use warnings;
use strict;

use charnames qw(:full);

binmode STDOUT, ':utf8';

foreach ( 0 .. 0x10FFFF ) {
	next unless chr =~ /\d/;
	printf qq(0x%04X  %s  --> %s\n), $_, chr, charnames::viacode($_);
}