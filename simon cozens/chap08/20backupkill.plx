#!/usr/bin/perl

use warnings;
use strict;
use File::Find;

# find ( \&callback, "/") ;
find ( \&callback, ".") ;

sub callback {
    unlink $_ if /\.bak$/;
}
