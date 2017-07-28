#!/usr/bin/perl
use warnings;
use strict;
use Proc::ProcessTable;
use Data::Dumper;

my $t = Proc::ProcessTable->new;
my $table = $t->table;

my %crop = map {
    my $x = $_;
    $x->{pid} => {
        pid      => $x->{pid},
        cmndline => $x->{cmndline},
        start    => $x->{start},
    }
} @$table;

# print Dumper($table);
print Dumper(\%crop);

print "possible keys:\n";
my @key_names = sort keys %{@{$table}[0]};
print "@key_names\n";