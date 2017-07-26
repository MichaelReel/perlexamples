#!/usr/bin/perl
use warnings;
use strict;

my $passwd = "kake:x:10018:10020::/home/kake:/bin/bash";
my @fields = split /:/, $passwd;
print "Login name : $fields[0]\n";
print "User ID : $fields[2]\n";
print "Home directory : $fields[5]\n";
print "---\n";

# aside: Transliteration
$passwd =~ tr/0-9/a-j/;
print $passwd, "\n";
print "---\n";

# aside2: Count vowels
my $vowels = $passwd =~ tr/aeiou//;
print $vowels, "\n";
print "---\n";