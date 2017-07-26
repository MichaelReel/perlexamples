#!/usr/bin/perl
use warnings;
use strict;

my $string = "There's more than One Way to do it!";
my $pat = "one way to do it";

# Regex doesn't take account of case

if ($string =~ /$pat/) {
    print "Congratulations! '$pat' matches the sample string.\n";
} else {
    print "Sorry. No match found for '$pat'\n";
}
print "--\n";

$pat = "(?i)one way to do it";

# Regex contains `ignore case` inline modifier

if ($string =~ /$pat/) {
    print "Congratulations! '$pat' matches the sample string.\n";
} else {
    print "Sorry. No match found for '$pat'\n";
}
print "--\n";

$string = "There's more than ((?-i)One Way) to do it!";

# Input now explicitly marks the One Way case as unignorable

if ($string =~ /$pat/) {
    print "Congratulations! '$pat' matches the sample string.\n";
} else {
    print "Sorry. No match found for '$pat'\n";
}
print "--\n";

# Even where the flag is included in the regex operator

if ($string =~ /$pat/i) {
    print "Congratulations! '$pat' matches the sample string.\n";
} else {
    print "Sorry. No match found for '$pat'\n";
}
print "--\n";

$pat = "(?i)there's more than";

# Will still apply outside the inline exclusion group though

if ($string =~ /$pat/) {
    print "Congratulations! '$pat' matches the sample string.\n";
} else {
    print "Sorry. No match found for '$pat'\n";
}
print "--\n";

print "(?i), (?m), (?x) and (?s) can all be used as inline modifiers.\n";
print "--\n";

$string = "There's more than One Way to do it!";

print "Enter a test expression: ";
$pat = <STDIN>;

chomp($pat);

if ($string =~ /$pat/) {
    print "Congratulations! '$pat' matches the sample string.\n";
} else {
    print "Sorry. No match found for '$pat'\n";
}