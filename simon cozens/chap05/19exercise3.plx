#!/usr/bin/perl
use warnings;
use strict;

$_ = '1: A silly sentence (495,a) *BUT* one which will be useful. (3)';

my $pattern;

# Enable one of these lines to skip the user input
# $pattern = "([a-z]+)";
# $pattern = "(\\w+)";
# $pattern = "([a-z]+)(.*)([a-z]+)";
# $pattern = "([a-z]+)(.*?)([a-z]+)";
# $pattern = "([a-z]+?)(.*?)([a-z]+?)";
# $pattern = "e(\\w|n\\w+)";

unless (defined $pattern) {
    print "Enter a regular expression: ";
    $pattern = <STDIN>;
    chomp($pattern);
}

/$pattern/;

my $index = 1;
for my $capture (//) {
    print "\$", $index++, " is '$capture'\n";
}
