#!/usr/bin/perl
use warnings;

#arithop1.plx
print 69 + 118, "\n";
print "---\n";

#arithop2.plx
print "21 from 25 is: ", 25 - 21, "\n";
print "4 + 13 - 7 is: ", 4 + 13 - 7, "\n";
print "---\n";

#arithop3.plx
print "7 times 15 is ", 7 * 15, "\n";
print "249 over 3 is ", 249 / 3, "\n";
print "---\n";

#arithop4.plx
print 3 + 7 * 15, "\n";
print "---\n";

#arithop5.plx
#won't compile as print is also an operator (with higher precedence)
# print (3  + 7) * 15

#arithop6.plx
print ((3 + 7) * 15, "\n");
print "---\n";

#arithop7.plx
print 2**4, " ", 3**5, " ", -2**4, " ", (-2)**4, "\n";
print "---\n";

#arithop8.plx
print "15 divided by 6 is exactly ", 15 / 6, "\n";
print "That's a remainder of ", 15 % 6, "\n";
print "---\n";
