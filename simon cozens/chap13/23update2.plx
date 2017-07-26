#!\usr\bin\perl
use warnings;
use strict;
use DBI;

my ($dbh, $rows);

$dbh=DBI->connect('dbi:mysql:testdb','test','test') ||
    die "Error opening database: $DBI::errstr\n";

$rows=$dbh->do("UPDATE checkin
                SET    destination = 'Edinburgh'
                WHERE  destination = 'Glasgow'
") ||
    die "Couldn't insert record : $DBI::errstr";

print "$rows added to checkin";

$dbh->disconnect || die "Failed to disconnect\n";
