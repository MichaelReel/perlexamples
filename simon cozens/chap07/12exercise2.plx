#!/usr/bin/perl
use warnings;
use strict;

my @chessboard;
my @back = qw(R N B Q K B N R);
for (0..7) {
    # For each column (file) on the board
    $chessboard[0]->[$_] = "W" . $back[$_]; # White Back Row
    $chessboard[1]->[$_] = "WP";            # White Pawns
    $chessboard[6]->[$_] = "BP";            # Black Pawns
    $chessboard[7]->[$_] = "B" . $back[$_]; # Black Back Row
}

while (1) {
    # Print board
    for my $i (reverse (0..7)) { # Row    (rank)
        for my $j (0..7) {       # Column (file)
            if (defined $chessboard[$i]->[$j]) {
                print $chessboard[$i]->[$j];
            } elsif ( ($i %2) == ($j %2) ) {
                print "..";      # Black space
            } else {
                print "  ";      # White space
            }
            print " ";  # End of cell
        }
        print "\n";     # End of row
    }

    print "\nStarting square [x,y]: ";
    my $move = <>;
    last unless ($move =~ /^\s*([1-8]),([1-8])/);
    my $startx = $1-1; my $starty = $2-1;

    unless (defined $chessboard[$starty]->[$startx]) {
        print "There's nothing on that square!\n";
        next;
    }

    print "\nEnding square [x,y]: ";
    $move = <>;
    last unless ($move =~ /([1-8]),([1-8])/);
    my $endx = $1-1; my $endy = $2-1;

    my $start = $chessboard[$starty]->[$startx];
    my $start_peice = substr($start, 1, 1);

    if ($start_peice eq "N") {
        # Check Knight move is valid
        my $dx = $endx - $startx;
        my $dy = $endy - $starty;
        # If dx or dy is zero, it's invalid
        # If the absolute sum is not 3, it's invalid
        if ($dx == 0 or $dy == 0 or (abs($dx) + abs($dy) != 3)) {
            print "Not a valid move for a Knight!\n";
            next;
        }

        my $start_side = substr($start, 0, 1);
        my $end_side = substr($chessboard[$endy]->[$endx], 0, 1);
        if ($start_side eq $end_side) {
            print "Cannot take own piece!\n";
            next;
        }
    }

    # Put starting square on ending square.
    $chessboard[$endy]->[$endx] = $chessboard[$starty]->[$startx];
    # Remove from old square
    undef $chessboard[$starty]->[$startx];
}
