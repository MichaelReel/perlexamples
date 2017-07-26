#!/usr/bin/perl
use warnings;
use strict;
use Proc::Background;
use threads ();

# Test values: 1 to test, 0 to run
my $in_test = 1;
my $test_proc_life = 3; # How long a test background process should run

print ("\n\ncall_out_to_system\n\n");
my $call_return = call_out_to_system("dir .");

print ("\n\nproc_create\n\n");
my $proc_handle = proc_create("./dir.bat . &");
print "\$proc_handle = $proc_handle\n";
wait_for_proc ($proc_handle);

print ("\n\nback_tick\n\n");
my $bt_return = back_tick("dir .");
print "Back tick returned: |", $bt_return, "|\n";

print ("\n\nopen_for_write\n\n");
# my MAIL;
open(MAIL, "> text.txt");
print MAIL "Test line 1\n";
print MAIL "Test line 2\n";
print MAIL (scalar localtime);
close MAIL;

print ("\n\nopen_for_write\n\n");
# my MAIL;
my $TEST = open_for_write("> text.txt");
print $TEST "Test line 1\n";
print $TEST "Test line 2\n";
print $TEST (scalar localtime);
close $TEST;


# Test enabling functions - used to subvert calls to the OS for testing

sub call_out_to_system {
	my @command = @_;
	if ($in_test) {
		print ('"executing" system: |', @command, "|\n");
		return 0;
	} else {
		return system(@command);
	}
}

sub proc_create {
	my @command = @_;
	if ($in_test) {
		print ('"creating" process: |', @command, "|\n");
		my $proc_handle = threads->create( sub { sleep ($test_proc_life) } );
		$proc_handle->detach();
		return $proc_handle;
	} else {
		return Proc::Background->new(@command);
	}
}

sub wait_for_proc {
	my $proc_handle = shift;
	while(proc_alive($proc_handle)) {
		sleep(1);
	}
}

sub proc_alive {
	my $proc_handle = shift;
	return $in_test ? $proc_handle->is_running : $proc_handle->alive;
}

sub back_tick {
	my @command = @_;
	if ($in_test) {
		print ('"executing" backticks: |', @command, "|\n");
		return "Test stdout from back_tick test";
	} else {
		return `@command`;
	}
}

sub open_for_write () {
	my @command = @_;
	if ($in_test) {
		return *STDOUT;
	} else {
		open(my $FH, "> text.txt");
		return $FH;
	}
}