#!/usr/bin/perl

use strict;
use warnings;

print "\nBitte geben Sie einen Verzeichnis an:\n";
my $verzeichnis = <STDIN>;
chomp($verzeichnis);

open(DATEI, ">verzeichnisinhalt.txt") or 
	die "Fehler beim Oeffnen: $!\n";
opendir(VERZEICHNIS, $verzeichnis) or
	die "Fehler beim Oeffnen: $!\n";

while(my $eintrag = readdir(VERZEICHNIS)) {
	next if ($eintrag eq "." || $eintrag eq ".." || 
			 -d "$verzeichnis/$eintrag");
	my $groesse = (-s "$verzeichnis/$eintrag")/1024;
	print DATEI "$eintrag $groesse KB\n";;
}

closedir(VERZEICHNIS);
close(DATEI);
