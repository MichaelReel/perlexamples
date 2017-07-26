#!/usr/bin/perl
use warnings;
use strict;

print "Please enter your password for crypting: ";
# See `perldoc -q password' for a better way to do this.
chomp(my $passwd = <>);

my $salt = join '',
    ('.', '/', 0..9, 'A'..'Z', 'a'..'z')[rand 64, rand 64];
$passwd = crypt($passwd, $salt);

# $passwd is now securely stored.
print $passwd, "\n";

# Suppose we know that $passwd is a crypted password
print "Please enter your password: ";
chomp(my $trypass = <>);

unless ($passwd eq crypt($trypass, $passwd)) {
    die "You're not who you say you are!";
}

# Aside: A prefix numbered of characters in the above generated $password
# (usually 2 chars) is the actual salt. Only the salt characters are taken from
# the start of $password in the second call to crypt.