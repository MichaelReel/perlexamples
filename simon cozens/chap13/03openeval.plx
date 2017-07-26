#!/usr/bin/perl
use warnings;
use strict;
use POSIX;
use SDBM_File;

my %dbm;
my $db_file="./temp/demo.dbm";

eval {
    tie %dbm, 'SDBM_File', $db_file, O_RDWR, 0;
};

if ($@) {
    print "Error tieing to $db_file: $@\n";
} elsif (!tied(%dbm)) {
    print "Error opening $db_file: $!\n";
}
