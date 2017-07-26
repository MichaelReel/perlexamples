#!/usr/bin/perl
use warnings;

{
    print "This is ";
    print "a block ";
    print "of statements\n";
}

print "Top level\n";
{
    print "Second level\n";
    {
        print "Third level\n";
    }
    print "Where are we?\n";
}

print "here ", "we ", "print ", "several ", "strings.\n";
print ("here ", "we ", "print ", "several ", "strings.\n");
# Last 2 strings are outside parentheses:
print ("here ", "we ", "print "), "several ", "strings.\n";


