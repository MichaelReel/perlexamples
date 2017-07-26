#!/usr/bin/perl
use strict;
use warnings;
use AnyDBM_File;
use POSIX;

my %dbm;
my $db_file="./temp/anydbmdemo.dbm";

tie (%dbm, 'AnyDBM_File', $db_file, O_CREAT|O_RDWR, 0644);

unless (tied %dbm) {
    print "Error opening $db_file $!\n";
} else {
    $dbm{'Created'}=localtime;
    foreach (sort keys %dbm) {
        print "$_ => $dbm{$_}\n";
    }
}
