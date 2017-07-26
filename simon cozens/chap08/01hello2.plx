#!/usr/bin/perl
use warnings;
use strict;

sub version {
    print "Beginning Perl's \"Hello, world.\" version 2.0\n";
}

my $option = shift;
version if $option eq "-v" or $option eq "--version";
print "Hello, world.\n";

# Aside: Running this without any arguments causing a couple of errors.
# The author indicates this will be addressed in a later example.