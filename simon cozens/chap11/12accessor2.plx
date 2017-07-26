#!/usr/bin/perl
use Person5;

my $object = Person->new (
    surname    => "Galilei",
    forename   => "Galileo",
    address    => "9.81 Pisa Apts.",
    occupation => "bombadier"
);
print "This person's surname: ", $object->surname, "\n";

# vscode debug on win10 hides the "Should call..." warning this generates:
Person->surname;