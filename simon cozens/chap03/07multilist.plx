#!/usr/bin/perl
# multilist.plx
use warnings;
use strict;

my $mone; my $mtwo;
($mone, $mtwo) = (1, 3);

print (("heads ", "shoulders ", "knees ", "toes ")[$mone, $mtwo]);
print "\n";
print "---\n";

#aside : right hand list is build before assigning to vars on the left
($mone, $mtwo) = ($mtwo, $mone);
print (("heads ", "shoulders ", "knees ", "toes ")[$mone, $mtwo]);
print "\n";