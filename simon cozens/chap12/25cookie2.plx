#!/usr/bin/perl
use warnings;
use strict;
use CGI::Cookie;

print "content-type: text/html\n\n";

my $cookie2=new CGI::Cookie(-name=>"myCookie2",-value=>"fghij");
print "Cookie 2: $cookie2\n";

#    http://localhost:8080/chap12/25cookie2.plx