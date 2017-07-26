#cookie1.plx
use warnings;
use strict;
use CGI;

print "content-type: text/html\n\n";

my $cgi=new CGI;
my $cookie1=$cgi->cookie(-name=>"myCookie1",-value=>"abcde");
print "Cookie 1: $cookie1\n";

#    http://localhost:8080/chap12/24cookie1.plx