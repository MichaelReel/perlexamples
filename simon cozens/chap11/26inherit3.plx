#!/usr/bin/perl

use warnings;
use strict;
use Employee3;

my $dilbert = Employee->new (
    surname    => "Dilbert",
    employer   => "Dogbert",
    salary     => "43000"
);

my $boss = $dilbert->employer;
$boss->address("3724 Cubeville");

my $dogbert = Employee->new (
    surname    => "Dogbert",
    employer   => "PHB",
    salary     => $dilbert->salary*2
);

$dilbert->employer($dogbert);

my $phb = $dogbert->employer;

# Aside: UNIVERSAL (root object) has some methods

# IS A
print "\$dilbert->isa(\"Person\"):   ", $dilbert->isa("Person"), "\n";
print "\$dilbert->isa(\"Employee\"): ", $dilbert->isa("Employee"), "\n";
print "\$dogbert->isa(\"Person\"):   ", $dogbert->isa("Person"), "\n";
print "\$dogbert->isa(\"Employee\"): ", $dogbert->isa("Employee"), "\n";
print "\$phb->isa(\"Person\"):       ", $phb->isa("Person"), "\n";
print "\$phb->isa(\"Employee\"):     ", $phb->isa("Employee") || 0, "\n";
print "\$phb->isa(\"UNIVERSAL\"):    ", $phb->isa("UNIVERSAL") || 0, "\n";

# Can
print "\$dilbert->can(\"raise\"):    ", $dilbert->can("raise"), "\n";
print "\$dogbert->can(\"raise\"):    ", $dogbert->can("raise"), "\n";
print "\$phb->can(\"raise\"):        ", $phb->can("raise") || 0, "\n";

# Also VERSION and DOES. See: http://perldoc.perl.org/UNIVERSAL.html