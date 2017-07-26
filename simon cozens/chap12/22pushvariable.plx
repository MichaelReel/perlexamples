#!/usr/bin/perl
use warnings;
use strict;
use CGI::Push qw(:standard);

my $line="";
my $delay=1; #first delay
my $total_delay=11; #sum of both delays

do_push(
    -next_page=>\&variable_refresh,
    -last_page=>\&done,
    -delay=>$delay
);

sub variable_refresh {
    my ($cgi,$count)=@_; #passed in by CGI::Push
    return undef if ($count>20); #stop when we get to 20

    $cgi->push_delay($total_delay-$cgi->push_delay());
    
    my $page=start_html().p("The count is $count");
    $line.="*";
    $page.=$cgi->p($line."\n").end_html();
    return $page;
}

sub done {
    my ($cgi,$count)=@_;

    return start_html()."Count stopped on $count".end_html();
}

#    http://localhost:8080/chap12/22pushvariable.plx
# Chances are your browser doesn't support this