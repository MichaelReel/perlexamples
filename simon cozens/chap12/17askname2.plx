#!/usr/bin/perl 
use warnings;
use strict;
use CGI qw(:all);

my $cgi=new CGI;

print header();
if ($cgi->param('first') and $cgi->param('last')) {
    my $first=ucfirst(lc($cgi->param('first')));
    my $last=ucfirst(lc($cgi->param('last')));
    print start_html("Welcome"),h1("Hello, $first $last");
} else {
    print start_html(-title=>"Enter your name");
    if ($cgi->param('first') or $cgi->param('last')) {
        print center(font({-color=>'red'},"You must enter a",
            ($cgi->param('last')?"first":"last"),"name"));
    }
    print generate_form();
}
print end_html();

sub generate_form {
    return start_form,
        h1("Please enter your name:"),
        p("First name", textfield('first')),
        p("Last name", textfield('last')),
        p(submit),
        end_form;
}

#    http://localhost:8080/chap12/17askname2.plx

# Command line alternatives: Without entries:
#    perl .\17askname2.plx

# that includes entries:
#    perl .\17askname2.plx first=john last=smith

# or using the ampersand:
#    perl .\17askname2.plx "first=john&last=smith"