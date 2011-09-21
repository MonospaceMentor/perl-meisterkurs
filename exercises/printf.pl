#!/usr/bin/perl

use strict;
use warnings;

print "Bitte geben Sie eine Zahl ein: ";
my $zahl = <STDIN>;
chomp($zahl);

print "Zweite Zahl: ";
my $zahl2 = <STDIN>;
chomp($zahl2);

my $ergebnis = $zahl1 / $zahl2;

printf "Das Ergebnis aus %f durch %f betraegt %f\n", $zahl1, $zahl2, $ergebnis;
printf "Ergebnis mit 3 Nachkommastellen: %.3f\n", $ergebnis;
printf "Ergebnis in Exponentialschreibweise: %e\n", $ergebnis;
