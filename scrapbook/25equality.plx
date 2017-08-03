#!/usr/bin/perl
use strict;
#use warnings;

# String equality is important (of course)

if ("Nancy" != "Nancy") {
    print "Nancy != Nancy\n";
}

if ("Nancy" ne "Nancy") {
    print "Nancy ne Nancy\n";
}

if ("John" == "Bill") {
    print "John == Bill\n";

}

if ("John" eq "Bill") {
    print "John ne Bill\n";
}