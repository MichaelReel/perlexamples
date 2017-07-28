#!/usr/bin/perl
use strict;
use warnings;

my @array = ({
    id      => 1,
    name    => 'Bob',
},{
    id      => 2,
    name    => 'Anne',
},{
    id      => 3,
    name    => 'Frank',
});

my %hash = map { 
    $_->{id} => { name => $_->{name} } 
} @array;

for my $id (1..3) {
    my $name = $hash{$id}->{name};
    print "User $id: $name\n";
}

