#!/usr/bin/perl
use warnings;

# number1.plx
print 25, -4;
print "\n---\n";

# number2.plx
print 25, " ", -4, "\n";
print "---\n";

# number3.plx
# underscores ignored in numbers
print 25_000_000, " ", -4, "\n";
print "---\n";

# number4.plx
# Only prints to 14 dp
print 25_000_000, " ", 3.141592653589793238462643383279502884197169399375105820974944592307816406286, "\n";
print "---\n";


