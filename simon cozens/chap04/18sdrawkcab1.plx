#!/usr/bin/perl
use warnings;
use strict;

# Idiom: this is the same as  `while (defined($_ = <STDIN>)) {}`
while (<STDIN>) {
    chomp;
    die "!enod llA\n" unless $_;
    my $sdrawkcab = reverse $_;
    print "$sdrawkcab\n";
}
