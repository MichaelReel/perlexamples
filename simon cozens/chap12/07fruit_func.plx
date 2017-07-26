#!/usr/bin/perl

use warnings;
use strict;
use CGI qw(:standard fruit fruits);

# This doesn't actually work, as fruit and fruits are not real functions in CGI

print header("text/xml"),
    fruits(
        fruit({-size=>"small", -color=>"red"}, ["Strawberry", "Cherry"])
    );
