#!/usr/bin/perl
use warnings;
use strict;
use POSIX;
use SDBM_File;
use Storable;

my %dbm;
my $db_file="./temp/simpledb.dbm";

tie %dbm, 'SDBM_File', $db_file, O_CREAT|O_RDWR, 0644;

# store a hash in DBM (note that we must supply a reference):
$dbm{'key'}=Storable::freeze({Name=>"John", Value=>"Smith", Age=>"42"});

# retrieve a hash from DBM (as a reference or as a hash):
my $href=Storable::thaw($dbm{'key'});
my %hash=%{ Storable::thaw($dbm{'key'}) };

# Running this then listing on simpledb.plx again sortof shows how it's stored
