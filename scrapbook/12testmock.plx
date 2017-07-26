#!/usr/bin/perl
use warnings;
use strict;

use Test::MockModule;
use Test::More;

use subs 'system';

my $module = new Test::MockModule("subs");
$module->mock('system', sub {
    # print ("executing system: (@_)\n");
    return 0;
});


do "11mockable.plx";