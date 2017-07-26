#!/usr/bin/perl
use warnings;
use strict;
use CGI qw(:all);

print header();
print generate_form();
print end_html();

sub generate_form {
    return start_form,
        h1("Please enter your name:"),
        p("First name", textfield('first')),
        p("Last name", textfield('last')),
        p(submit),
        end_form;
}

#    http://localhost:8080/chap12/15genform.plx