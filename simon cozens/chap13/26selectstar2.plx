#!\usr\bin\perl
use warnings;
use strict;
use DBI;

my ($dbh, $sth);

$dbh=DBI->connect('dbi:mysql:testdb','test','test') || 
    die "Error opening database: $DBI::errstr\n";

$sth=$dbh->prepare
    ("SELECT firstname, lastname from checkin WHERE destination='Japan'
      ORDER BY firstname;") ||
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
print "---\n";

# Alternative by reference
$sth->execute() ||
    die "Couldn't execute query: $DBI::errstr\n";

$matches=$sth->rows();
unless ($matches) {
    print "Sorry, there are no matches\n";
} else {
    print "$matches matches found:\n";
    while (my $row_ref = $sth ->fetchrow_arrayref) {
        print "@$row_ref\n";
    }
}
print "---\n";

# Alternative by hash reference
$sth->execute() ||
    die "Couldn't execute query: $DBI::errstr\n";

$matches=$sth->rows();
unless ($matches) {
    print "Sorry, there are no matches\n";
} else {
    print "$matches matches found:\n";
    while (my $href = $sth ->fetchrow_hashref) {
        foreach (keys %{$href}) {
            print "$_ => $href->{$_} ";
        }
        print "\n";
    }
}
print "---\n";

$sth->finish();

$dbh->disconnect || die "Failed to disconnect\n";

# Some steps will be required from the previous examples
# "18querytest.plx", "19create.plx", "21insert2.plx" and "22update1.plx"