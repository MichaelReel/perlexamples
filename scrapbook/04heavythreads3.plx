#!/usr/bin/perl
use warnings;
use strict;
use threads ();

sub print_foo_ref($);

my $foo = "3458962";

my @thread_list = ();
foreach (1..4) {
    my $thread = threads->create( \&print_foo_ref, $_ );
    push(@thread_list, $thread);
    $thread->detach();
}

print_foo_ref(0);

my $running = 2;
while ($running) {
    sleep(1);
    $running = 0;
    for my $thread (@thread_list) {
        $running += 1 if $thread->is_running();
    }
    print "currently running: $running\n";
}

sub print_foo_ref ($) {
    my $thead_id = shift;
    sleep ($thead_id * 2);
    print "  $thead_id: coderef = ".\$foo.", value = ".$foo."\n";
}