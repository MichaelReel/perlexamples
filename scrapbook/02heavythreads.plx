#!/usr/bin/perl
use warnings;
use strict;
use threads ();

sub print_foo_ref($);

my $foo;

my @threads = ();
foreach (1..2) {
    push(@threads, threads->new( sub{ print_foo_ref($_) } ));
}

print_foo_ref(0);

while(my $thread = pop @threads) {
    $thread->join();
}

sub print_foo_ref ($) {
    my $thead_id = shift;
    sleep ($thead_id * 2);
    print "  $thead_id: coderef = ".\$foo."\n";
}