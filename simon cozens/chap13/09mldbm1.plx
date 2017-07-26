#!/usr/bin/perl
use warnings;
use strict;
use MLDBM;
use POSIX; #for O_CREAT and O_RDWR symbols

my %mlhash;
my $mldb_file="./temp/mlanydbmdemo.dbm";

tie %mlhash, 'MLDBM', $mldb_file, O_CREAT|O_RDWR, 0644;

# Don't forget:
#    cpan install MLDBM