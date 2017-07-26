#!/usr/bin/perl

# To setup windows to use the above, we need to add the file type and the
# file extension associations. Using an admin CMD window:
#
# FTYPE perl=C:\Strawberry\perl\bin\perl.exe
# ASSOC .plx=perl
# ASSOC .pl=perl

use strict;
use warnings;

# Added a script alias to the apache httpd.conf for this,
# and allowed this folder to be viewable:

#    ScriptAlias /chap12/ "C:/Users/mreel/Documents/BTI/Training/perl/simon cozens/chap12/"
#    ...
#    <Directory "C:/Users/mreel/Documents/BTI/Training/perl/simon cozens/chap12/">
#        ScriptInterpreterSource Registry
#        AllowOverride None
#        Options None
#        Require all granted
#    </Directory>

# The above, and a reset of apache, should now allow the use of the URL:
#
#    http://localhost:8080/chap12/01cgihello.plx

print "Content-type: text/plain\n\n";
print "Hello CGI World!\n";
print "You're calling from ", ($ENV{REMOTE_HOST} || $ENV{REMOTE_ADDR}), "\n";

# Aside: The apache installation already includes the rather insecure printenv.pl

