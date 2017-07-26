#!/usr/bin/perl
use warnings;
use strict;

# Some warnings are hidden when using perl debug in vscode for windows 10:

print <STDOUT>, "Printing to standard out.\n";
warn "Warning";
print <STDERR>, "Printing to standard error.\n";

# On terminal the above prints out:
#    Filehandle STDOUT opened only for output at .\99warntest.plx line 5.
#    Printing to standard out.
#    Warning at .\99warntest.plx line 6.
#    Filehandle STDERR opened only for output at .\99warntest.plx line 7.
#    Printing to standard error.

# On vscode debug we can see:
#    Printing to standard out.
#    
#    Printing to standard error.
