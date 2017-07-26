#!/usr/bin/perl
use warnings;
use strict;
use CGI;

my $cgi=new CGI;
print $cgi->header('text/html','401 Authorization Required');

#    http://localhost:8080/chap12/09_401response.plx
#    Although you'll not see much. Run on the command line to see output.