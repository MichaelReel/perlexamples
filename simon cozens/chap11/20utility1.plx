#!/usr/bin/perl
use warnings;
use strict;
use Person9;

my $object = Person->new (
    surname    => "Gallelei",
    forename   => "Galleleo",
    address    => "9.81 Pisa Apts.",
    occupation => "bombadier"
);
$object->printletter("You owe me money. Please pay it.");
