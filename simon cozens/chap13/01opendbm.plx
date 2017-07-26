#!/usr/bin/perl
use warnings;
use strict;
use POSIX;
use SDBM_File;           # or GDBM_File / NDBM_File / AnyDBM_File...

my %dbm;
my $db_file="./temp/demo.dbm";

tie %dbm, 'SDBM_File', $db_file, O_RDWR, 0;
