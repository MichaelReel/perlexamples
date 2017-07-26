#!/usr/bin/perl
# headline.plx
# Display the www.perl.com top story.
use warnings;
use strict;

# This doesn't work anymore. Need lynx installed first of all,
# and perl.com doesn't have the content expected.
# The intent is pretty clear though. The pipe "|" in the open command
# indicates that we want the STDOUT from the lynx executable.

open LYNX, "lynx -source http://www.perl.com/ |" or die "Can't open lynx: $!";

# Define $_ and skip through LYNX until a line containing "standard.def"
$_ = "";
$_ = <LYNX> until /standard\.def/;

# The headline is in the following line:
my $head = <LYNX>;

# Extract "Headline" from "<A HREF=something>Headline</a>..."
$head =~ m|^<A HREF=[^>]+>(.*?)</a>|i;

print "Today's www.perl.com headline: $1\n";
