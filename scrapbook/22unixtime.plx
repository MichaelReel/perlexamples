#!/usr/bin/perl
use warnings;
use strict;

use Time::Local;
use Time::Piece;
use Time::Seconds;
use Date::Manip;

use Data::Dumper;

my $date_time = "31/07/2017"." 23:59:59";
my $date_format = "%d/%m/%Y %H:%M:%S";
my $date_conversion = Time::Piece->strptime($date_time, $date_format);
my $new_format = "%Y-%m-%d %H:%M:%S";
my $formatted_date = UnixDate($date_conversion, $new_format);

print "\$date_time       = $date_time       \n";
print "\$date_format     = $date_format     \n";
print "\$date_conversion = $date_conversion \n";
print "\$new_format      = $new_format      \n";
print "\$formatted_date  = $formatted_date  \n";

print "-------------------------------------------\n";

my $start_date = localtime();
my $timemod = { days => 0, hours => -1, minutes => 5, seconds => -1 };
my $adjusted_time = adjust_time($start_date, $timemod);

print "\$start_date      = $start_date      \n";
print "\$adjusted_time   = $adjusted_time   \n";
print Dumper($timemod);

# Test that adjust_time can handle not having a moding reference
my $bork = adjust_time($start_date);
print "\$bork            = $bork            \n";

sub adjust_time {
    my $input_time = shift;
    my $time_ref = shift;

    my $seconds = 0;
    $seconds +=  $time_ref->{'seconds'}               if defined $time_ref->{'seconds'};
    $seconds += ($time_ref->{'minutes'} * ONE_MINUTE) if defined $time_ref->{'minutes'};
    $seconds += ($time_ref->{'hours'}   * ONE_HOUR)   if defined $time_ref->{'hours'};
    $seconds += ($time_ref->{'days'}    * ONE_DAY)    if defined $time_ref->{'days'};
    $seconds += ($time_ref->{'weeks'}   * ONE_WEEK)   if defined $time_ref->{'weeks'};
    $seconds += ($time_ref->{'months'}  * ONE_MONTH)  if defined $time_ref->{'months'};
    $seconds += ($time_ref->{'years'}   * ONE_YEAR)   if defined $time_ref->{'years'};

    return $input_time + $seconds;
}

