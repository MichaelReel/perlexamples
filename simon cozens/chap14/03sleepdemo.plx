#!/usr/bin/perl
use warnings;
use strict;

$SIG{ALRM} = sub { die "SIGALRM received" }; # anon sub provided

eval {
    alarm 5;
    my $input = <STDIN>;
    alarm 0; # turn off the alarm is we reach here in time
};

if ($@) { # $@ contains errors from last eval, undef if eval went smoothly
    if ($@ =~ /SIGALRM/) {
        print "Operation timed out.\n";
    } else {
        die "Something unexpected occurred; $@\n";
    }
}