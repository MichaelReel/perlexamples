#!/usr/bin/perl
use warnings;
use strict;

# Bubble sorting

my $word_list = <<'EOF';
chaffinch
Blank
able
antipathy
clatter
Angela
antelope
artichoke
ball
Zebedee
blink
bobolink
yak
Boitano
brick
brink
careless
chaffinch
chink
clink
aardvark
EOF

my $deb = 0;
my $word_count = () = $word_list =~ /(\w+)\n/g;

print "Word count: $word_count\n";

while (--$word_count > 0){
    # Will limit the scan against the word count each run to save time
    my $words_checked = 0;
    # Keep a marker of the current pos, as it is reset by replace
    my $current_pos = pos($word_list) = 0;

    # find 2 consecutive words
    while ($words_checked < $word_count) {
        # Update the match result
        $word_list =~ m/\G(\w+)\n(\w+)\n/s;
        # Keep the current pos
        $current_pos = pos($word_list);

        # If they're in the wrong order
        if ( lc $1 gt lc $2) {
            # Swap them
            $word_list =~ s/\G(\w+)\n(\w+)\n/$2\n$1\n/;
        } 

        # Move the search position up
        pos($word_list) = $current_pos;
        $word_list =~ m/\G(\w+\n)/;
        pos($word_list) = $+[0];
        $words_checked++;
    }
}

print "\n$word_list\n";



