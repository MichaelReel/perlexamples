#!/usr/bin/perl
use warnings;
use strict;
use CGI;
# use CGI::Pretty; # CGI::Pretty is DEPRECATED and will be removed in a future
# release. Please see https://github.com/leejo/CGI.pm/issues/162

my $cgi=new CGI;

print $cgi->header(), $cgi->start_html("Simple Examples");

print $cgi->center("Centered Text");
print $cgi->p("A Paragraph");
print $cgi->br();
print $cgi->b("Bold"), $cgi->i("Italic");
print $cgi->p("A Paragraph", $cgi->sup("A superscript"));

print $cgi->ul($cgi->li("One"), $cgi->li("Two"), $cgi->li("Three"));
print $cgi->ul($cgi->li(["One", "Two", "Three"])); # \@ Doesn't get flattened
print $cgi->ul($cgi->li(("One", "Two", "Three"))); # @  Gets flattened (1 li)

print $cgi->ol({-type=>"i"}, $cgi->li(["Item1", "Item2", "Item3"]));
print $cgi->ol({-type=>"a"}, $cgi->li(["Item1", "Item2", "Item3"]));
print $cgi->ol({-type=>"1"}, $cgi->li(["Item1", "Item2", "Item3"]));

print $cgi->end_html();

#    http://localhost:8080/chap12/05programmatical1.plx

