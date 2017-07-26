#!/usr/bin/perl
#401namedresponse.plx
use strict;
use warnings;
use CGI;
my $cgi=new CGI;

print $cgi->header(-type=>'text/html',
    -status=>'401 Authorization Required',
    -authname=>'Quo Vadis');

#    http://localhost:8080/chap12/10_401namedresponse.plx
#    Although you'll not see much. Run on the command line to see output.