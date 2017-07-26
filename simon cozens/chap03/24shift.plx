#!/usr/bin/perl
use warnings;
use strict;

my @array = ();
unshift(@array, "first");
print "Array is now: @array\n";
unshift @array, "second", "third";
print "Array is now: @array\n";
shift @array ;
print "Array is now: @array\n";
print "---\n";

#aside
print<<'EOF'
    While push and pop deal with the top of the stack, unshift and shift are the
    equivalent actions on the bottom.

            +---+---+---+~   ~+----+
            | 0 | 1 | 2 | ... | $# |
            |---|---|---|~   ~|----|
 unshift -> |   |   |   |     |    | <- push
   shift <- |   |   |   |     |    | -> pop
            +---+---+---+~   ~+----+
EOF