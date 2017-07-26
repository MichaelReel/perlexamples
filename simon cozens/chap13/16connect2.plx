#!\usr\bin\perl
use warnings;
use strict;
use DBI;

my $dbh=DBI->connect('dbi:mysql:mysql:localhost','root','') ||
    die "Error opening database: $DBI::errstr\n";
print "Hello\n";
$dbh->disconnect;
print "Goodbye\n";