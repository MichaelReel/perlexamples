#!/usr/bin/perl
use warnings;
use strict;


my $element = 'a';

# # requires 5.10, experimental in 5.18

# if ( uc($element) ~~ ['A','E','I','O','U'] ) {
#     print "element '$element' is a vowel";
# }
# else
# {
#     print "element '$element' is not a vowel";
# }

my %lookup = map { $_ => undef } qw(A E I O U);

if (exists $lookup{ uc($element) }) {
    print "element '$element' is a vowel\n";
}
else
{
    print "element '$element' is not a vowel\n";
}

print "---\n";

if (grep { $_ eq uc($element) } qw(A E I O U) ) {
    print "element '$element' is a vowel\n";
}
else
{
    print "element '$element' is not a vowel\n";
}