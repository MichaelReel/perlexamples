#!/usr/bin/perl
use warnings;
use strict;

our $sleep;
our %conf;
our $environment;
our @runner;

require '04rundef.plx';

warn "Starting runners...\n";
system("sudo echo 'sudo available'");
system("$runner[0] $environment $sleep > /sites/logs/nightly/bdd-collect-runner-error-log 2>&1 &");
system("$runner[1] $environment $sleep > /sites/logs/nightly/bdd-external-runner-error-log 2>&1 &");
system("$runner[2] $environment $sleep > /sites/logs/nightly/bdd-misc-runner-error-log 2>&1 &");
system("$runner[3] $environment $sleep > /sites/logs/nightly/bdd-provision-runner-error-log 2>&1 &");
system("$runner[4] $environment $sleep > /sites/logs/nightly/bdd-qaqb-runner-error-log 2>&1 &");
system("$runner[5] $environment $sleep > /sites/logs/nightly/bdd-ws-runner-error-log 2>&1 &");
system("$runner[6] > /sites/logs/nightly/qnd-runner-error-log 2>&1 &");
system("$runner[7] > /sites/logs/nightly/leaky_bucket-runner-error-log 2>&1 &");
system("java -jar $runner[8] > /sites/logs/nightly/selenium-runner-error-log 2>&1 &");
system("sudo -i -u jetty java -jar $runner[9] > /sites/logs/nightly/jetty-runner-error-log 2>&1 &");
system("$runner[10] $environment 60 > /sites/logs/nightly/bdd-ws-runner-error-log 2>&1 &");
system("$runner[11] $environment $sleep > /sites/logs/nightly/bdd-brioche-runner-error-log 2>&1 &");
system("$runner[12] > /sites/logs/nightly/inventory_get_notifications-error-log 2>&1 &");
system("$runner[13] > /sites/logs/nightly/order_get_notifications-error-log 2>&1 &");
system("$runner[14] > /sites/logs/nightly/support_get_notifications-error-log 2>&1 &");
system("$runner[15] > /sites/logs/nightly/ticketing_get_notifications-error-log 2>&1 &");
system("$runner[16] > /sites/logs/nightly/siro_notification_releaser-error-log 2>&1 &");