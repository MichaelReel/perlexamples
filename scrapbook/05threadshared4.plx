#!/usr/bin/perl
use warnings;
use strict;
use threads ();
use threads::shared;

sub print_refs($);

my $foo :shared = "10";
my $bar = "10";

my @thread_list = ();
foreach (1..4) {
    my $thread = threads->create( \&print_refs, $_ );
    push(@thread_list, $thread);
    $thread->detach();
}

print_refs(0);

my $running = 2;
while ($running) {
    sleep(1);
    $running = 0;
    for my $thread (@thread_list) {
        $running += 1 if $thread->is_running();
    }
}

sub print_refs ($) {
    my $thread_id = shift;
    print "  $thread_id: coderef foo = ".\$foo.", value foo = ".$foo."\n";
    print "  $thread_id: coderef bar = ".\$bar.", value bar = ".$bar."\n";
    $foo += $thread_id;
    $bar += $thread_id;
    print "  $thread_id: foo incremented to ".$foo."\n";
    print "  $thread_id: bar incremented to ".$bar."\n";
}