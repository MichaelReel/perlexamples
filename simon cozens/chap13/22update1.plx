#!\usr\bin\perl
#select1.plx

use warnings;
use strict;
use DBI;

my ($dbh, $rows);

$dbh=DBI->connect('dbi:mysql:testdb','test','test') || 
   die "Error opening database: $DBI::errstr\n";

$rows=$dbh->do("UPDATE checkin
                SET    checkedin = 1,
                       numberofbags = 2
                WHERE  firstname = 'Peter' AND lastname = 'Morgan'
") ||
           die "Couldn't insert record : $DBI::errstr";

print "$rows added to checkin";

$dbh->disconnect || die "Failed to disconnect\n";

# Some steps will be required from the previous examples
# "18querytest.plx", "19create.plx" and "21insert2.plx"