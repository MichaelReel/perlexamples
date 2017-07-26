#!/usr/bin/perl
use warnings;
use strict;

$_ = "fish cake and cream cake";
print "Our original order was ", $_, "\n";

s/(?<=fish )cake/and chips/;
print "No, wait. I'll have ", $_, " instead\n";

s/(?<!fish )cake/slices/;
print "Actually, make that ", $_, ", will you?\n";

print "---\n";

# Aside:
print "Lookahead and lookbehind must be fixed width, so no using +, ? or *\n";
print "or we get \"Variable length lookbehind not implemented in regex\".";