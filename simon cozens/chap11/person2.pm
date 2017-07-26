package Person;
# Class for storing data about a person

use warnings;
use strict;

sub new {
    my $self = {};
    bless ($self, "Person");
    return $self;
}

1;
