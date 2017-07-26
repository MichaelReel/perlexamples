#!\usr\bin\perl
use warnings;
use strict;
use DBI;

my ($dbh, $sth, $name, $id);
sub aside();

$dbh=DBI->connect('dbi:mysql:testdb','test','test') || 
    die "Error opening database: $DBI::errstr\n";

$sth=$dbh->prepare("SELECT NOW();") ||
    die "Prepare failed: $DBI::errstr\n";

$sth->execute() ||
    die "Couldn't execute query: $DBI::errstr\n";

my $start_datetime = $sth ->fetchrow_array;
print $start_datetime, "\n";


$sth->finish();

$dbh->disconnect || die "Failed to disconnect\n";

