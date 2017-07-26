#!/usr/bin/perl
use warnings;
use strict;

my $ref;
{
   my @array = (1, 2, 3);
   print "\$ref: |$ref|, \@array: |@array|\n";

   $ref = \@array;
   print "\$ref: |$ref|, \@array: |@array|\n";

   my $ref2 = \@array;
   print "\$ref: |$ref|, \@array: |@array|, \$ref2: |$ref2|\n";

   $ref2 = "Hello!";
   print "\$ref: |$ref|, \@array: |@array|, \$ref2: |$ref2|\n";
}
print "\$ref: |$ref|, \@{\$ref}: |@{$ref}|\n";

undef $ref;
if (defined $ref) {
    print "\$ref: |$ref|\n" 
} else {
    print "\$ref is undefined\n";
};
