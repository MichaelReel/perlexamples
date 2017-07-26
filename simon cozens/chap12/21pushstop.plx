#!/usr/bin/perl
use warnings;
use strict;
use CGI::Push qw(:standard);

my $line="";

do_push(
    -next_page=>\&refresh,
    -last_page=>\&done,
    -delay=>1
);

sub refresh {
    my ($cgi,$count)=@_; #passed in by CGI::Push

    return undef if ($count>20); #stop when we get to 20

    my $page=start_html().p("The count is $count");
    $line.="*";
    $page.=$cgi->p($line."\n").end_html();
return $page;
}

sub done {
    my ($cgi,$count)=@_;

    return start_html()."Count stopped on $count".end_html();
}

#    http://localhost:8080/chap12/21pushstop.plx
# Chances are your browser doesn't support this