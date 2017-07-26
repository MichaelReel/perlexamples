#!/usr/bin/perl
use warnings;
use strict;
use DBI;

print "Available DBI Drivers and Data Sources:\n\n";
my @drivers=DBI->available_drivers('quiet');
my @sources;
foreach my $driver (@drivers) {
    print "$driver\n";
    @sources=eval { DBI->data_sources($driver) };
    if ($@) {
        print "\tError: ",substr($@,0,60),"\n";
    } elsif (@sources) {
        foreach (@sources) {
            print "\t$_\n";
        }
    } else {
        print "\tNo known data sources\n";
    }
}

# Win10: If the MySQL database has a password set for the root user, no sources
# will be found. Trying stopping mysqld and rerunning it like this:
#    mysqld --skip-grant-tables

# While the above is running, try to run this script again.
