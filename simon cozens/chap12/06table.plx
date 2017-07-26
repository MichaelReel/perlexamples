#!/usr/bin/perl 
#table.plx
use warnings;
use strict;
use CGI;
# use CGI::Pretty; # CGI::Pretty is DEPRECATED and will be removed in a future
# release. Please see https://github.com/leejo/CGI.pm/issues/162

print "Content-type: text/html\n\n";

my $cgi=new CGI;

print $cgi->table({-border=>1,-cellspacing=>3,-cellpadding=>3},
        $cgi->Tr({-align=>'center',-valign=>'top'}, [
            $cgi->th(["Column1","Column2","Column3"]),
        ]),
        $cgi->Tr({-align=>'center',-valign=>'middle'}, [
            $cgi->td(["Red","Blue","Yellow"]),
            $cgi->td(["Cyan","Orange","Magenta"]),
            $cgi->td({-colspan=>3},["A wide row"])
        ]),
        $cgi->caption("An example table")
    );

print 

#    http://localhost:8080/chap12/06table.plx