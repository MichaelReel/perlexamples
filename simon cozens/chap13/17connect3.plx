#!\usr\bin\perl
use warnings;
use strict;
use DBI;

my $host ='localhost';
my $port ='3306';
my $dsn  ='dbi:mysql:mysql';
my $user ='root';
my $pass ='';

$ENV{DBI_AUTOPROXY}="host=$host;port=$port";

my $dbh=DBI->connect($dsn,$user,$pass) ||
    die "Error opening database: $DBI::errstr\n";
print "Hello\n";
$dbh->disconnect;
print "Goodbye\n";

# This causes a compilation error with DBI_AUTOPROXY set in win10.
# Possibly module dependency missing?