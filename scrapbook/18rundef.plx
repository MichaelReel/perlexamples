#!/usr/bin/perl
use warnings;
use strict;

use lib '/sites/integration/development/lib';
use BDD::Conf;

my $confref = BDD::Conf::get_variables();

our %conf = %$confref;
our $environment = $conf{'environment'};
our $sleep = 0;

my $bdd_environment = $conf{'bdd_environment'};

our @runner = (
	"/sites/integration/$bdd_environment/bin/bdd-collect-runner",
	"/sites/integration/$bdd_environment/bin/bdd-external-runner",
	"/sites/integration/$bdd_environment/bin/bdd-misc-runner",
	"/sites/integration/$bdd_environment/bin/bdd-provision-runner",
	"/sites/integration/$bdd_environment/bin/bdd-qaqb-runner",
	"/sites/integration/$bdd_environment/bin/bdd-ws-runner",
	"/sites/cerberus/$environment/bin/qnd",
	"/sites/cerberus/$environment/bin/leaky_bucket",
	"/sites/integration/$bdd_environment/bin/selenium_driver_2_37.jar",
	"/opt/jetty/start.jar",
	"/sites/integration/$bdd_environment/bin/bdd-unslow_orders",
	"/sites/integration/$bdd_environment/bin/bdd-brioche-runner",
	"/sites/cerberus/$environment/bin/inventory_get_notifications",
	"/sites/cerberus/$environment/bin/order_get_notifications",
	"/sites/cerberus/$environment/bin/support_get_notifications",
	"/sites/cerberus/$environment/bin/ticketing_get_notifications",
	"/sites/siro_sim/$environment/bin/notification_releaser",
);

print "@runner\n";