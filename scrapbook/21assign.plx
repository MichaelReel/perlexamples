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

print "Part ||=:\n";
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

print "Part &&=:\n";
print Dumper(\%stuff);
print '-' x 40, "\n";

delete  @stuff{'new_key_05', 'new_key_06', 'new_key_07', 'new_key_08', 'new_key_09'};
# key's that aren't set: set to assiging values
$stuff{'new_key_10'} //= $stuff{'other'};
$stuff{'new_key_11'} //= $stuff{'key_no_value'};
# undef assigning value: key set to undef
$stuff{'new_key_12'} //= $stuff{'no_key'};
# existing value with assigning value: value stays as it is
$stuff{'new_key_13'} = "Value13";
$stuff{'new_key_13'} //= $stuff{'other'};
# existing key, no value with assigning value: set to assiging values
$stuff{'new_key_14'} = undef;
$stuff{'new_key_14'} //= $stuff{'other'};

print "Part //=:\n";
print Dumper(\%stuff);
print '-' x 40, "\n";

delete  @stuff{'new_key_10', 'new_key_11', 'new_key_12', 'new_key_13', 'new_key_14'};

# key's that aren't set, get set
$stuff{'new_key_15'} = $stuff{'other'} || $stuff{'new_key_15'};
$stuff{'new_key_16'} = $stuff{'key_no_value'} || $stuff{'new_key_16'};
# undef value gets overwritten
$stuff{'new_key_17'} = undef;
$stuff{'new_key_17'} = $stuff{'other'} || $stuff{'new_key_17'};
# undef being assigned with key no value cause value to be assigned with undef
$stuff{'new_key_18'} = "Value";
$stuff{'new_key_18'} = $stuff{'key_no_value'} || $stuff{'new_key_18'};
# Value existing and assigned existing is overwritten
$stuff{'new_key_19'} = "GotValue";
$stuff{'new_key_19'} = $stuff{'existing'} || $stuff{'new_key_19'};
# key exists with value assigned with no_key: Doesn't get overwritten
$stuff{'new_key_20'} = "Value";
$stuff{'new_key_20'} = $stuff{'no_key'} || $stuff{'new_key_20'};

print "Part existing = assigned || existing:\n";
print Dumper(\%stuff);
print '-' x 40, "\n";

delete  @stuff{'new_key_15', 'new_key_16', 'new_key_17', 'new_key_18', 'new_key_19', 'new_key_20'};

# Only if the assigning VALUE exists with the key be created
$stuff{'new_key_21'} = $stuff{'other'} if defined $stuff{'other'};
$stuff{'new_key_22'} = $stuff{'key_no_value'} if defined $stuff{'key_no_value'};
$stuff{'new_key_23'} = $stuff{'no_key'} if defined $stuff{'no_key'};
# Undefined values stay undefined
$stuff{'new_key_24'} = undef;
$stuff{'new_key_25'} = undef;
$stuff{'new_key_26'} = undef;
$stuff{'new_key_24'} = $stuff{'other'} if defined $stuff{'other'};
$stuff{'new_key_25'} = $stuff{'key_no_value'} if defined $stuff{'key_no_value'};
$stuff{'new_key_26'} = $stuff{'no_key'} if defined $stuff{'no_key'};
# Values are only overwritten if the assigning value is defined
$stuff{'new_key_27'} = "Value_27";
$stuff{'new_key_28'} = "Value_28";
$stuff{'new_key_29'} = "Value_29";
$stuff{'new_key_27'} = $stuff{'other'} if defined $stuff{'other'};
$stuff{'new_key_28'} = $stuff{'key_no_value'} if defined $stuff{'key_no_value'};
$stuff{'new_key_29'} = $stuff{'no_key'} if defined $stuff{'no_key'};

print "Part existing = new if defined new:\n";
print Dumper(\%stuff);
print '-' x 40, "\n";


delete  @stuff{'new_key_21', 'new_key_22', 'new_key_23', 'new_key_24', 'new_key_25', 'new_key_26'};
delete  @stuff{'new_key_27', 'new_key_28', 'new_key_29'};
print "Part clean down:\n";
print Dumper(\%stuff);
print '-' x 40, "\n";