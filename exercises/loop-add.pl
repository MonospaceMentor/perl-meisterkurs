#!/usr/bin/perl

use strict;
use warnings;

print "\nBerechnung der Summe von 1 bis zur Zahl: ";
my $max = <STDIN>;
chomp($max);

my $summe = 0;

for (my $i = 1; $i <= $max; $i++) {
  $summe += $i;
}

print "Die Summe von 1 bis $max betraegt $summe.\n";

