#!/usr/bin/perl
use warnings;
use strict;
use Data::Dumper;

my %hash;

push @{ $hash{"key1"} }, "Value1";
push @{ $hash{"key1"} }, "Value2";
push @{ $hash{"key2"} }, "Value2";

warn Dumper(\%hash);