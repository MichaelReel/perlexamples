#!\usr\bin\perl
use warnings;
use strict;
use DBI;

my ($dbh, $sth, $firstname, $lastname, $destination, $rows);

$dbh=DBI->connect('dbi:mysql:testdb','test','test') ||
    die "Error opening database: $DBI::errstr\n";

$sth=$dbh->prepare
    ("INSERT INTO checkin (firstname, lastname, destination)
      VALUES              (?        , ?       , ?          )");

$rows=0;

while (<>) {
    chomp;
    ($firstname, $lastname, $destination) = split(/:/);
    $sth->execute($firstname, $lastname, $destination)
        || die "Couldn't insert record : $DBI::errstr";

    $rows+=$sth->rows();
}

print "$rows new rows have been added to checkin";

$dbh->disconnect || die "Failed to disconnect\n";

# Some steps will be required from the previous examples
# "18querytest.plx" and "19create.plx".

# call with passlist:
#     perl .\21insert2.plx .\passlist.txt

# To check the insert was successful, sign in as test user in mysql:
#     mysql -u test -p
#     <enter password>
#     select * from testdb.checkin;
# or:
#     use testdb;
#     select * from checkin;

