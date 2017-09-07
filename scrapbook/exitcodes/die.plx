#!\usr\bin\perl
use warnings;
use strict;

warn "die will exit with 255 and generate it's own error";
print "this will die";

die;