#!/usr/bin/perl
use warnings;
use strict;

$_ = '1: A silly sentence (495,a) *BUT* one which will be useful. (3)';

print "Enter a regular expression: ";

my $pattern = <STDIN>;

# my $pattern = "([a-z]+)";
# my $pattern = "(\\w+)";
# my $pattern = "([a-z]+)(.*)([a-z]+)";
# my $pattern = "([a-z]+)(.*?)([a-z]+)";
# my $pattern = "([a-z]+?)(.*?)([a-z]+?)";
# my $pattern = "e(\\w|n\\w+)";

chomp($pattern);

if (/$pattern/) {
    print "The text matches the pattern '$pattern'.\n";
    print "\$1 is '$1'\n" if defined $1;
    print "\$2 is '$2'\n" if defined $2;
    print "\$3 is '$3'\n" if defined $3;
    print "\$4 is '$4'\n" if defined $4;
    print "\$5 is '$5'\n" if defined $5;
} else {
    print "'$pattern' was not found.\n";
}
print "---\n";

#aside:
my @caps = ($_ =~ /$pattern/);
print "The text matches the pattern '$pattern'.\n";
print "Num captures is ", scalar @caps, "\n";
my $index = 1;
for my $capture (@caps) {
    print "\$", $index++, " is '$capture'\n";
}
