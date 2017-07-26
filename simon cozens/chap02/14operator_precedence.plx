#!/usr/bin/perl
use warnings;

print<<EOF

This is important so added an "example" which is really just a reproduction
of text in the book. The following is the operator precence in descending 
order:

        list_operators()
        ->
        **
        ! ~ \
        =~ !~
        * / % x
        + - .
        << >>
        < > <= >= lt gt le ge
        == != <=> eq ne cmp
        &
        | ^
        &&
        ||
        .. ...
        ?:
        , =>
        not
        and
        or xor

EOF