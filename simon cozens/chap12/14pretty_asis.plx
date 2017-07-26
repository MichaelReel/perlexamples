#!/usr/bin/perl
use warnings;
use strict;

# CGI::Pretty is DEPRECATED and will be removed in a future
# release. Please see https://github.com/leejo/CGI.pm/issues/162

use CGI::Pretty qw(:standard);
push @CGI::Pretty::AS_IS,"LI";

my $cgi=new CGI::Pretty;
print header,
    start_html("Pretty HTML Demo"),
    ol(li(["First","Second","Third"])),
    end_html;

#    http://localhost:8080/chap12/14pretty_asis.plx
#    Run from command line to "demostrate" the pretty functionality