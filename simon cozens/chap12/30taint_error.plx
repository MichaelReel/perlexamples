#!/usr/bin/perl
use warnings;
use strict;

system 'date';

# Executing with the -T flag on the command line:
#    perl -T .\30taint_error.plx
#
# will produced the "Inscure..." error message

# Attempting to call this over apache:
#    http://localhost:8080/chap12/30taint_error.plx
#
# Will produce an "Internal Server Error" to the browser and log:
# "[...] Premature end of script headers: 30taint_error.plx"
