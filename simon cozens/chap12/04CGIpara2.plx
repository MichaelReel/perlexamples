#!/usr/bin/perl
use strict;
use warnings;
use CGI;

my $cgi=new CGI; #read in parameters

#iterate over each parameter name
foreach ($cgi->param()) {
    # Modify and set each parameter value from itself
    # Lowercase every string and uppercase the first letter
    $cgi->param($_,ucfirst(lc($cgi->param($_))));
}

print $cgi->header();                   #print a header
print $cgi->start_html("Welcome");      #generate HTML document start
print "<h1>Welcome, ",$cgi->param('first')," ",$cgi->param('last'),"</h1>";

# Aside: We can ckeck the host OS if necessary:
print "<p><b>OS:</b> ", $^O, "</p>";

print $cgi->end_html();                 #finish HTML document

#    http://localhost:8080/chap12/04CGIpara2.plx?first=eMMa&last=pEEl&other=oThEr
