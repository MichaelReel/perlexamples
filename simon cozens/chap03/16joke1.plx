#!/usr/bin/perl
use warnings;
use strict;

my @questions = qw(Java Python Perl C);
my @punchlines = (
    "None. Change it once, and it's the same everywhere.",
    "One. He just stands below the socket and the world revolves around him.",
    "A million. One to change it, the rest to try and do it in fewer lines.",
    '"CHANGE?!!"'
);

print "Please enter a number between 1 and 4: ";
my $selection = <STDIN>;
$selection -= 1;
print "How many $questions[$selection] ";
print "programmers does it take to change a lightbulb?\n\n";
sleep 2;
print $punchlines[$selection], "\n";
print "---\n";

# aside
my @months = qw(Jan Feb Mar Apr Jun Jul Aug Sep Oct Nov Dec);
my @month_select = @months[3,5,7..9];
print "@month_select\n";
print @months[3,5,7..9], "\n";