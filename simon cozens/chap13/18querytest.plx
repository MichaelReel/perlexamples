#!\usr\bin\perl
use warnings;
use strict;
use DBI;

my ($dbh, $sth, $name, $id);
sub aside();

$dbh=DBI->connect('dbi:mysql:testdb','test','test') || 
    die "Error opening database: $DBI::errstr\n", aside();

$sth=$dbh->prepare("SELECT * from testac;") ||
    die "Prepare failed: $DBI::errstr\n", aside();

$sth->execute() ||
    die "Couldn't execute query: $DBI::errstr\n", aside();

while (( $id, $name) = $sth ->fetchrow_array) {
    print "$name has ID $id\n";
}

$sth->finish();

$dbh->disconnect || die "Failed to disconnect\n";


# Aside: return the steps needed to prevent errors from the above:
sub aside() {
    return <<'EOF';

To setup a user/database/table for this account:
================================================
Sign into myslq as the root user:
    mysql -u root -p
    <enter password>

Get some basic info:
    show databases;
    select user from mysql.users;

Create a testdb database
    create database testdb;
    show databases;

Create a test user
    create user 'test'@'localhost' identified by 'test';
    select user from mysql.users;

Grant test control of the testdb:
    grant all privileges on testdb . * to 'test'@'localhost';
    flush privileges;
    exit;

Login as test:
    mysql -u root -p
    <enter 'test' as password>

testdb should be in the database list for this user:
    show databases;

Create the testac table for the above example:
    create table testdb.testac (id integer auto_increment primary key, data varchar(100) not null);
    desc testdb.testac;
EOF
}
