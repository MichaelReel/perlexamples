#!/usr/bin/perl
use warnings;
use strict;
use threads ();
use Thread::Queue;

sub print_refs($);
sub push_to_queue();

my $foo_queue = Thread::Queue->new();

for (1..100) {
    $foo_queue->enqueue($_);
}

my @thread_list = ();
foreach (1..4) {
    my $thread = threads->create( \&print_refs, $_ );
    push(@thread_list, $thread);
    $thread->detach();
}

print_refs(0);

my $running = 1;
while ($running) {
    sleep(1);
    $running = 0;
    for my $thread (@thread_list) {
        $running += 1 if $thread->is_running();
    }
}

sub print_refs ($) {
    my $thread_id = shift;
    # Non-blocking dequeue so we finish the thread when queue is empty
    while (my $data = $foo_queue->dequeue_nb()) {
        sleep(1);
        print ("Thread $thread_id popped $data off queue\n");
    }
    print ("Thread $thread_id ran out of queued items.\n");
}
