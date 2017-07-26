#!/usr/bin/perl
use warnings;
use strict;

my @table = (
    ["one",   "two",    "three" ,   "four",        "five",        "six"        ],
    ["two",   "four",   "six" ,     "eight",       "ten",         "twelve"     ],
    ["three", "six",    "nine" ,    "twelve",      "fifteen",     "eighteen"   ],
    ["four",  "eight",  "twelve" ,  "sixteen",     "twenty",      "twenty four"],
    ["five",  "ten",    "fifteen" , "twenty",      "twenty five", "thirty"     ],
    ["six",   "twelve", "eighteen" ,"twenty four", "thirty",      "thirty six" ]
);

my $move = "";
my $x = 0;
my $y = 0;

while (1) {
    print "Multiply 2 numbers between 1 and six (e.g.: 1 x 2 ): ";
    chomp ($move = <>);
    if ($move =~ /^\s*([1-6])\s*x\s*([1-6])/) {
        $x = $1-1;
        $y = $2-1;
        last;
    } else {
        print "Input error, please use the format \"<num> x <num>\"\n";
        print "Where <num> is a number between 1 and 6.\n"
    }
}

die "Invalid coords $x, $y" unless (defined $table[$x]->[$y]);
print "$move = ", $table[$x]->[$y], "\n";