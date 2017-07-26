#!/usr/bin/perl
use warnings;

print 255,        "\n";
# Illegal octal
print 0378,       "\n";
# Illegal binary
print 0b11111112, "\n";
# Bareword ('G')
print 0xFG,       "\n";