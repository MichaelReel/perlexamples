#!/usr/bin/perl
use warnings;

#bool1.plx
print "Is two equal to four? ",          2==4, "\n";
print "OK, then, is six equal to six? ", 6==6, "\n";
print "---\n";

#bool2.plx
print "So, two isn't equal to four? ", 2 != 4, "\n";
print "---\n";

#bool3.plx
print "Fix is more than six? ",       5 > 6,  "\n";
print "Seven is less than sixteen? ", 7 < 16, "\n";
print "Two is equal to two? ",        2 == 2, "\n";
print "One is more than one? ",       1 > 1,  "\n";
print "Six is not equal to seven? ",  6 != 7, "\n";
print "---\n";

#bool4.plx
print "Seven is less than or equal to sixteen? ", 7 <= 16, "\n";
print "Two is more than or equal to two? ",       2 >= 2, "\n";
print "---\n";

#bool5.plx
print "Compare six and nine? ",    6 <=> 9, "\n";
print "Compare seven and seven? ", 7 <=> 7, "\n";
print "Compare eigth and four? ",  8 <=> 4, "\n";
print "---\n";

#bool6.plx
print "Test one: ", 6 > 3 && 3 > 4, "\n";
print "Test two: ", 6 > 3 and 3 > 4, "\n";
print ("Test three: ", (6 > 3 && 3 > 4), "\n");
print ("Test four: ", (6 > 3 and 3 > 4), "\n");
print "---\n";