#!/usr/bin/perl

use warnings;
use strict;
use Employee;

my $dilbert = Employee->new (
    surname    => "Dilbert",
    employer   => "Dogbert",
    salary     => "43000"
);

my $boss = $dilbert->employer;
$boss->address("3724 Cubeville");

my $dogbert = Employee->new (
    forename   => "K9",
    surname    => "Dogbert",
    employer   => "PHB",
    salary     => $dilbert->salary*2,
    address    => "4237 Cubeville",
    phone_no   => "555-0709",
    position   => "Contractor",
    occupation => "Consultant"
);

$dilbert->employer($dogbert);

my $phb = $dogbert->employer;

$dilbert->business_card();
$dogbert->business_card();