#!\usr\bin\perl
use warnings;
use strict;
use DBI;

my ($dbh, $rows);

$dbh=DBI->connect('dbi:mysql:testdb','test','test') || 
    die "Error opening database: $DBI::errstr\n";

$rows=$dbh->do("INSERT INTO checkin (firstname, lastname, destination)
                VALUES              ('John',    'Smith',  'Glasgow'  )") ||
    die "Couldn't insert record : $DBI::errstr";

print "$rows added to checkin";

$dbh->disconnect || die "Failed to disconnect\n";

# Some steps will be required from the previous examples
# "18querytest.plx" and "19create.plx".

# To check the insert was successful, sign in as test user in mysql:
#     mysql -u test -p
#     <enter password>
#     select * from testdb.checkin;
# or:
#     use testdb;
#     select * from checkin;