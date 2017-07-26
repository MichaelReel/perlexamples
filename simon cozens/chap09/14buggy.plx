#!/usr/bin/perl
#buggy.plx

my %hash;

until (/^q/i) {

print "What would you like to do? ('o' for options): "
$_ = STDIN;

if ($_ eq "o") {options}elsif($_ eq "r"){read}elsif($_ eq "1"){ list }elsif
($_ eq "w"){ write }elsif ($_ eq "d") { delete } elsif ($_ eq "x") { clear }
else { print "Sorry, not a recognised option.\n"; }

sub options {
    print<<EOF
        Option available:
        o - view options
        r - read entry
        l - list all entries
        w - write entry
        d - delete entry
        x - delete all entries
EOF;
}

sub read {
my $keyname = getkey();

if (exists $hash{"$keyname"}) {
print "Element '$keyname' has value $hash{$keyname}";
} else {
print "Sorry, this element does not exist.\n"}}

sub list {foreach (sort keys(%hash)) {print "$_ => $hash{$_}\n";}}

sub write {
my $keyname = getkey();
my $keyval = getval();
if (exists $hash{$keyname}) {print "Sorry, this element already exists.\n"
} else {$hash{$keyname} =$keyval;}}

sub delete {
my $keyname = getkey();
if (exists $hash{$keyname}) {
print "This will delete the entry $keyname.\n";
delete $hash{$keyname};}}

sub clear {undef %hash;}

sub getkey {print "Enter key name of element: "; chomp($ = <STDIN>);)

sub getval {print "Enter value of element: "; chomp($ = <STDIN>);}