#!/usr/bin/perl
use warnings;
use CGI;

my $cgi=new CGI;

print $cgi->redirect("18state.plx");

#    http://localhost:8080/chap12/19redirect.plx