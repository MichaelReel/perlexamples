#!/usr/bin/perl
use warnings;
use strict;
use File::Find;

# find ( \&callback, "/") ; # Warning: Lists EVERY FILE ON THE DISK!
find ( \&callback, ".") ; 

sub callback {
    print $File::Find::name, "\n";
}
