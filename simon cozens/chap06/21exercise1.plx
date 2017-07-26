#!/usr/bin/perl
use warnings;
use strict;

my $directory  = shift @ARGV;
my $search_str = shift @ARGV;

opendir DH, $directory or die "Couldn't open the directory: $!";
while (my $file = readdir(DH)) {
    next unless (-f $file and -r $file);
    open FILE, $file or die $!;
    my $lineno = 1;

    # Idiom for `while (defined ($_ = <FILE>))`
    while (<FILE>) {
        if (/$search_str/) {
            # Has a newline from the file
            print $file, ", ", $lineno++, ": $_";
        }
    }
}
