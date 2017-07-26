#!/usr/bin/perl
use warnings;
use CGI;
use strict;

my $cgi=new CGI;

print $cgi->header();
print $cgi->start_html(
    -title=>'A Red Background',
    -bgcolor=>'red'
    );
print $cgi->h1("This page is red");
print $cgi->end_html();

#    http://localhost:8080/chap12/12starthtml_body.plx