#!\usr\bin\perl
use warnings;
use strict;
use DBI;

my ($dbh, $rows);

$dbh=DBI->connect('dbi:mysql:testdb','test','test') ||
    die "Error opening database: $DBI::errstr\n";

$rows=$dbh->do("UPDATE checkin
    SET destination =
    (
        SELECT destination
        FROM checkin
        WHERE firstname='Henry' AND lastname='Rollins' 
    )
    WHERE  firstname='Bill' AND lastname='Gates'
") ||
    die "Couldn't insert record : $DBI::errstr";

print "$rows added to checkin";

$dbh->disconnect || die "Failed to disconnect\n";

# This statement won't actually work as-is on MySQL, we get the following
# error:
#     You can't specify target table 'checkin' for update in FROM clause