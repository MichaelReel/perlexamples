#!/usr/bin/perl
use warnings;
use strict;

sub ask_time (\$);

my ($hours, $minutes, $seconds) = secs2hms(3723);
print "3723 seconds is $hours hours, $minutes minutes and $seconds seconds";
print "\n";

$main::user_time = 0;

($hours, $minutes, $seconds) = ask_time($main::user_time);
print "$main::user_time seconds $hours hours, $minutes minutes and $seconds seconds";
print "\n";

sub secs2hms {
    my ($h,$m);
    my $seconds = shift;
    $h = int($seconds/(60*60)); $seconds %= 60*60;
    $m = int($seconds/60);      $seconds %= 60;
    return ($h,$m,$seconds);
}

sub ask_time (\$){
    print "Enter time in seconds:\n";
    my $time_ref = shift;
    chomp($$time_ref = <>);

    return secs2hms $$time_ref;
}
