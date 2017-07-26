#!/usr/bin/perl
use warnings;
use strict;
use POSIX;
use SDBM_File;           # or GDBM_File / NDBM_File / AnyDBM_File...

my %dbm;
my $db_file="./temp/demo.dbm";

tie %dbm, 'SDBM_File', $db_file, O_CREAT|O_RDWR, 0644;

# Running opendbm2 or openeval will not produce errors if this script has been
# run. Delete the files ./temp/demo.dbm.dir and ./temp/demo.dbm.pag to reset.

