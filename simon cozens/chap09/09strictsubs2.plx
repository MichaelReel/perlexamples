#!/usr/bin/perl
use warnings;
use strict;

# The book describes a query
#     'Name "main::a" used only once: possible typo'
# But We don't see this in vscode debug or terminal window.
sub twelve { return 12 }
$a = twelve;
