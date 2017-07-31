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
my $timemod = { days => 0, hours => 0, minutes => 5, seconds => -1 };
my $adjusted_time = adjust_time($start_date, $timemod);

print "\$start_date      = $start_date      \n";
print "\$adjusted_time   = $adjusted_time   \n";
print Dumper($timemod);

sub adjust_time {
    my $input_time = shift;
    my %timemod = %{shift()};

    my $seconds = 0;
    $seconds += $timemod{'seconds'}                if defined $timemod{'seconds'};
    $seconds += ($timemod{'minutes'} * ONE_MINUTE) if defined $timemod{'minutes'};
    $seconds += ($timemod{'hours'} * ONE_HOUR)     if defined $timemod{'hours'};
    $seconds += ($timemod{'days'} * ONE_DAY)       if defined $timemod{'days'};
    $seconds += ($timemod{'weeks'} * ONE_WEEK)     if defined $timemod{'weeks'};
    $seconds += ($timemod{'months'} * ONE_MONTH)   if defined $timemod{'months'};
    $seconds += ($timemod{'years'} * ONE_YEAR)     if defined $timemod{'years'};

    return $input_time + $seconds;
}

