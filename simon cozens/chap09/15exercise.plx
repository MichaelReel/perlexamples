#!/usr/bin/perl
use warnings;
use strict;
use diagnostics;

my %hash;

do {
    print "What would you like to do? ('o' for options): ";
    chomp($_ = <STDIN>);

    if ($_ eq "o") {
        options();
    } elsif ($_ eq "r") {
        read_entry();
    } elsif ($_ eq "l") {
        list();
    } elsif ($_ eq "w") {
        write_entry();
    } elsif ($_ eq "d") {
        delete_entry();
    } elsif ($_ eq "x") {
        clear();
    } elsif ($_ eq "q") {
        # Skip the option error message
    } else {
        print "Sorry, not a recognised option.\n";
    }
} until (/^q/i);

sub options {
    print<<EOF
        Option available:
        o - view options
        r - read entry
        l - list all entries
        w - write entry
        d - delete entry
        x - delete all entries
EOF
}

sub read_entry {
    my $keyname = getkey();
    if (exists $hash{"$keyname"}) {
        print "Element '$keyname' has value $hash{$keyname}.\n";
    } else {
        print "Sorry, this element does not exist.\n";
    }
}

sub list {
    foreach (sort keys(%hash)) {
        print "$_ => $hash{$_}\n";
    }
}

sub write_entry {
    my $keyname = getkey();
    my $keyval = getval();
    if (exists $hash{$keyname}) {
        print "Sorry, this element already exists.\n";
    } else {
        $hash{$keyname} = $keyval;
    }
}

sub delete_entry {
    my $keyname = getkey();
    if (exists $hash{$keyname}) {
        print "This will delete the entry $keyname.\n";
        delete $hash{$keyname};
    }
}

sub clear {
    undef %hash;
}

sub getkey {
    print "Enter key name of element: ";
    chomp($_ = <STDIN>);
    return $_;
}

sub getval {
    print "Enter value of element: ";
    chomp($_ = <STDIN>);
    return $_;
}