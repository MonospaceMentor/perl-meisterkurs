#!/usr/bin/perl

use strict;
use warnings;

my $tabelle = [];

# 10 Zeilen...
foreach my $zeile ( 0..9 ) {

	$tabelle->[$zeile] = [];

	# ...mit je 10 Spalten
	foreach my $spalte ( 0..9 ) {
		$tabelle->[$zeile]->[$spalte] = $zeile * $spalte;
	}

}
