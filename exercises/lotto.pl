#!/usr/bin/perl

use strict;
use warnings;

# Hash fuer bereits gezogene Zahlen
# Fuer jede gezogene Zahl $x gilt: $gezogen{$x} == 1
my %gezogen;

print "Das Programm erzeugt Zahlen fuer das Spiel 6 aus 49:\n";

foreach ( 1..6 ) {
print LottoZahl(\%gezogen) . " ";
}

sub LottoZahl {
my ($gezogen) = @_;

my $zahl;

do {

        # Zufallszahl ziehen
        $zahl = int(rand(49)) + 1;

        # nochmal, falls bereits gezogen
    } while (exists $gezogen->{$zahl});

    # Zahl als gezogen merken
    $gezogen->{$zahl} = 1;

    # Zahl zurueckgeben
return $zahl;
}
