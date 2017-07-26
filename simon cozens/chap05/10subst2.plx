#!/usr/bin/perl
use warnings;
use strict;

$_ = "there are two major products that come out of Berkeley: LSD and UNIX";
# Jeremy Anderson

s/(\w+)\s+(\w+)/$2 $1/;
print $_, "?\n";
print "---\n";

#aside
$_ = "there are two major products that come out of Berkeley: LSD and UNIX";
# Jeremy Anderson

s/(\w+)\s+(\w+)/$2 $1/g;
print $_, "?\n";
print "---\n";

#aside 2
print m{major}, "\n"; # can use other bracing, but need to include m for matches
print m|minor|, "\n"; # not found, returns nothing

s[(\w+)\s+(\w+)][$2 $1]g; # paired delimiters must use 2 pairs for substitute
print $_, "?\n";
print "---\n";

#aside 3
print<<'EOF'
    /m - treat the string as multiple line. ^ and $ can match against any newline.
    /s - treat the string as single line. . will now match a new line character.
    /g - global. Replace all in substitute, capture all as groups in match.
    /x - allow whitespace and comments in a match. Using /x and expression can be
         stretched:

         /^
         (              # first group: time
             [0-2]\d
             :
             [0-5]\d
             :
             [0-5]\d
         )
         \s+
         \[             # square brackets
            (           # second group machine name
                [^\]]+  # not a closing square bracket
            )
         ]
         \s+
         (              # third group: everything else
            .*
         )
         $/x

EOF