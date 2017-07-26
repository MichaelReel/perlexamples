#!/usr/bin/perl
use warnings;
use strict;
use CGI;

my $cgi=new CGI;

print $cgi->header(),
    $cgi->start_html("Environment Dumper"),
    $cgi->table({-border=>1},
            $cgi->Tr($cgi->th(["Parameter","Value"])),
            map {
                $cgi->Tr($cgi->td([$_,$ENV{$_}]))
            } sort keys %ENV
        ),
    $cgi->end_html();

#    http://localhost:8080/chap12/08envdump.plx