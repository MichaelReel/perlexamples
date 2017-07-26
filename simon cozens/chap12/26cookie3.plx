#!/usr/bin/perl
use warnings;
use strict;
use CGI;

my $cgi=new CGI;

my $cookie=$cgi->cookie("myCookie");

if ($cookie) {
    print $cgi->header(); #no need to send cookie again
} else {
    my $value=generate_unique_id();
    $cookie=$cgi->cookie(-name=>"myCookie",
    -value=>$value,
    -expires=>"+1d"); #or whatever we choose
    print $cgi->header(-type=>"text/html",-cookie=>$cookie);
}

sub generate_unique_id {
    #generate a random 8 digit hexadecimal session id
    return sprintf("%08.8x",rand()*0xffffffff);
}

#    http://localhost:8080/chap12/26cookie3.plx