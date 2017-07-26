#!/usr/bin/perl
use warnings;
use strict;

my $numeric = 0;
my $input = shift;
if (defined $input and $input eq "-n") {
    $numeric = 1;
    $input = shift;
}
my $output = shift;

if (defined $input) {
    open INPUT, $input or die "Couldn't open file $input: $!\n";
} else {
    # Handles are referenced using the glob (*)
    # This makes INPUT be the exact same thing as STDIN
    *INPUT = *STDIN;
}

if (defined $output) {
    open OUTPUT, ">$output" or die "Couldn't open file $input: $!\n";
} else {
    *OUTPUT = *STDOUT;
}

my @file = <INPUT>;
if ($numeric) {
    @file = sort { $a <=> $b } @file;
} else {
    @file = sort @file;
}

print OUTPUT @file;


my $aside = <<'EOF'
Testing this in powershell (or VSCode on windows) requires a slightly
different command to pipe a file in than the command used in linux.

Linux:
    perl 12sort3.plx < sortme.txt

Powershell:
    Get-Content sortme.txt | perl 12sort3.plx
EOF
