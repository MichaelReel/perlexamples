#!/usr/bin/perl
use warnings;
use strict;
use CGI::Push qw(:standard);

my $line="";
do_push(-next_page=>\&refresh);

sub refresh {
    my ($cgi,$count)=@_; #passed in by CGI::Push

    my $page=start_html().p("The count is $count");
    if (length($line)>9) {
        $line="";
    } else {
        $line.="*";
    }
    $page.=p($line."\n").end_html();
    return $page;
}

#    http://localhost:8080/chap12/20push.plx
# Chances are your browser doesn't support this.
# This script will run on the command line though.