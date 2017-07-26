#!/usr/bin/perl
use warnings;
use strict;

use charnames qw(:full);

print <<"LEGEND";
s   matches \\s, matches Perl whitespace
h   matches \\h, horizontal whitespace
v   matches \\v, vertical whitespace
p   matches [[:space:]], POSIX whitespace
all characters match Unicode whitespace, \\p{Space}

LEGEND

printf qq(%s %s %s %s  %-7s --> %s\n),
	qw( s h v p  Ordinal  Name );
print '-' x 50, "\n";

foreach my $ord ( 0 .. 0x10ffff ) {
	next unless chr($ord) =~ /\p{Space}/;
	my( $s, $h, $v, $posix ) = 
		map { chr($ord) =~ m/$_/ ? 'x' : ' ' } 
			( qr/\s/, qr/\h/, qr/\v/, qr/[[:space:]]/ );  
	printf qq(%s %s %s %s  0x%04X  --> %s\n),
		$s, $h, $v, $posix,
		$ord, charnames::viacode($ord);
}