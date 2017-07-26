#!/usr/bin/perl
use warnings;
use strict;

my $runner10 = "/opt/jetty/start.jar";

start_runners();
kill_runners();

sub start_runners {
	system("sudo -i -u jetty java -jar $runner10 > /sites/logs/nightly/jetty-runner-error-log 2>&1 &");
}

sub kill_runners {
	# This only works when the script is run as root
	# `pkill -f $runner10`;
	# Alternative:
	system("sudo pkill -f java.*$runner10");
}
