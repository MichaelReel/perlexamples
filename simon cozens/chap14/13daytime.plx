#!/usr/bin/perl
use warnings;
use strict;

print scalar(localtime(time())), "\n";

# In the guide this is used to demostrate the use of /etc/inetd.
# Afaik this isn't available in win 10.