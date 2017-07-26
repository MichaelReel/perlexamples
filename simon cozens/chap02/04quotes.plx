#!/usr/bin/perl
use warnings;

#quotes1.plx
# Non-interpolated
print '\tThis is a single quoted string.\n';
# Interpolated
print "\tThis is a double quoted string.\n";
print "---\n";

#quotes2.plx
print "C:\\WINNT\\Profiles\\\n";
print 'C:\WINNT\Profiles\ ', "\n";
print "---\n";

#aside1.plx
print 'ex\\ er\\', ' ci\' se\'', "\n";
print "---\n";

#quotes3.plx
print "It's as easy as that.\n";
print '"Stop," he cried.', "\n";
print "---\n";

#quotes4.plx
print "'\"Hi,\" said Jack. \"Have you read Slashdot today?\"'\n";
print "---\n";

#quotes5.plx
print qq/'\"Hi,\" said Jack. \"Have you read Slashdot today?\"'\n/;
print "---\n";

#quotes6.plx
print qq|'\"Hi,\" said Jack. \"Have you read Slashdot today?\"'\n|;
print qq#'\"Hi,\" said Jack. \"Have you read Slashdot today?\"'\n#;
print qq('\"Hi,\" said Jack. \"Have you read Slashdot today?\"'\n);
print qq<'\"Hi,\" said Jack. \"Have you read Slashdot today?\"'\n>;
print "---\n";