#!\usr\bin\perl
use warnings;
use strict;
use DBI;

my ($dbh, $sth);

$dbh=DBI->connect('dbi:mysql:testdb','test','test') || 
   die "Error opening database: $DBI::errstr\n";

$sth=$dbh->prepare("CREATE TABLE checkin (
    id           INTEGER     AUTO_INCREMENT PRIMARY KEY,
    firstname    VARCHAR(32) NOT NULL,
    lastname     VARCHAR(32) NOT NULL,
    checkedin    INTEGER,
    numberofbags INTEGER,
    destination  VARCHAR(32) NOT NULL)");

$sth->execute();           # execute the statement

$sth->finish();            # finish the execution
print "All done\n";
$dbh->disconnect || die "Failed to disconnect\n";

# Some steps will be required from the previous example "querytest.plx"

# To check the table was created, sign in as test user in mysql:
#     mysql -u test -p
#     <enter password>
#     desc testdb.checkin;
# or:
#     show columns from testdb.checkin;
# or:
#     use testdb;
#     show tables;

