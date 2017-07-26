#!\usr\bin\perl
use warnings;
use strict;
use DBI;

my ($dbh, $sth);

$dbh=DBI->connect('dbi:mysql:testdb','test','test') || 
    die "Error opening database: $DBI::errstr\n";

$sth=$dbh->prepare("SELECT * from checkin WHERE checkedin IS NOT NULL;") ||
    die "Prepare failed: $DBI::errstr\n";

$sth->execute() ||
    die "Couldn't execute query: $DBI::errstr\n";

my $matches=$sth->rows();
unless ($matches) {
    print "Sorry, there are no matches\n";
} else {
    print "$matches matches found:\n";
    while (my @row = $sth ->fetchrow_array) {
        print "@row\n";
    }
}

$sth->finish();

$dbh->disconnect || die "Failed to disconnect\n";

# Some steps will be required from the previous examples
# "18querytest.plx", "19create.plx", "21insert2.plx" and "22update1.plx"