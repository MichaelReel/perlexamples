#!/usr/bin/perl
use warnings;
use strict;
use threads ();

sub print_foo_ref($);

my $foo = "3458962";

my @threads = ();
foreach (1..4) {
    push(@threads, threads->new( sub{ print_foo_ref($_) } ));
}

print print_foo_ref(0);

my $running = 2;
while ($running) {
    sleep(1);
    $running = 0;
    for my $thread (@threads) {
        $running += 1 if $thread->is_running();
    }
    print "currently running: $running\n";
}

# Threads are all stopped, but still need to join them
# Join will also return the result of the thread
while(my $thread = pop @threads) {
    print $thread->join();
}

sub print_foo_ref ($) {
    my $thead_id = shift;
    sleep ($thead_id * 2);
    return "  $thead_id: coderef = ".\$foo.", value = ".$foo."\n";
}