#!/usr/bin/perl
use warnings;
use strict;
use Data::Dumper;

my %stuff = (
    existing => "Existing",
    key_no_value => undef,
    other => "Other",
    more => "More",
);

print "Part Setup:\n";
print Dumper(\%stuff);
print '-' x 40, "\n";


# key's that aren't set are defined with the target value
$stuff{'new_key_01'} ||= $stuff{'other'};
$stuff{'new_key_02'} ||= $stuff{'key_no_value'};
# Even if the target key doesn't exist
$stuff{'new_key_03'} ||= $stuff{'no_key'};
# keys that are set stay as they already are
$stuff{'existing'} ||= $stuff{'other'};
# Keys set to undef are overwritten
$stuff{'new_key_04'} = undef;
$stuff{'new_key_04'} ||= $stuff{'other'};

print "Part OR:\n";
print Dumper(\%stuff);
print '-' x 40, "\n";

delete @stuff{'new_key_01', 'new_key_02', 'new_key_03', 'new_key_04'};
# key's that aren't set are set to undef no matter what is being assigned
$stuff{'new_key_05'} &&= $stuff{'other'};
$stuff{'new_key_06'} &&= $stuff{'key_no_value'};
# undef value set to undef no matter what is being assigned
$stuff{'new_key_07'} = undef;
$stuff{'new_key_07'} &&= $stuff{'other'};
# undef being assigned causes value set to undef
$stuff{'new_key_08'} = "Value";
$stuff{'new_key_08'} &&= $stuff{'key_no_value'};
# Value existing and assigned existing causes assigning value to be assigned
$stuff{'new_key_09'} = "GotValue";
$stuff{'new_key_09'} &&= $stuff{'existing'};

print "Part AND:\n";
print Dumper(\%stuff);
print '-' x 40, "\n";

