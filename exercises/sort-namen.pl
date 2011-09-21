#!/usr/bin/perl

use strict;
use warnings;

my @namen;
my $name;

do {
	print "Bitte geben Sie einen Namen ein: ";
	$name = <STDIN>;
	chomp($name);
	push(@namen, $name);
} until ($name eq "");

pop(@namen);

foreach $name (sort @namen) {
	print "$name\n";
}
