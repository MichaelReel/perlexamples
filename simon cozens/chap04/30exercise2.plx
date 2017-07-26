#!/usr/bin/perl
use warnings;
use strict;

my $target = 12;
print "Guess my number!\n";

while (1) {
    print "Enter your guess: ";
    my $guess = <STDIN>;
    if ($target == $guess) {
        last;
    }
    if ($guess > $target) {
        print "Your number is bigger than my number\n";
        next;
    }
    if ($guess < $target){ 
        print "Your number is less than my number\n";
        next;
    }
}
print "That's it! You guessed correctly!\n";
