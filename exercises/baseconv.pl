#!/usr/bin/perl

use strict;
use warnings;

do {
  print "\nBitte geben Sie eine Zahl ein: ";
  my $zahl = <STDIN>;
  chomp($zahl);

  printf "Hexadezimalwert: %X\n", $zahl;
  printf "Oktalwert: %o\n", $zahl;
  printf "Binaerwert: %b\n", $zahl;
} until ($zahl == 0);
