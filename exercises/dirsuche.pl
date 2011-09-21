#!/usr/bin/perl

use strict;
use warnings;
use Symbol;

print "\nBitte geben Sie den Teil eines Dateinamens ein: ";
my $name = <STDIN>;
chomp($name);

print "Bitte geben Sie einen Verzeichnisnamen ein: ";
my $startverzeichnis = <STDIN>;
chomp($startverzeichnis);

print "\n";

my $count = &VerzeichnisAuslesen($startverzeichnis, $name);
print "\nEs wurden $count Dateien gefunden\n";

sub VerzeichnisAuslesen {
#
# Liest ein Verzeichnis aus und zaehlt Dateien, die einen
# bestimmten Namen enthalten;
# ruft sich fuer Unterverzeichnisse rekursiv auf.
#
# Parameter: 
# - Pfad zum Verzeichnis
# - zu suchender Name
#

my ($verzeichnis, $name) = @_;

  # lokalen Zaehler initialisieren
my $count = 0;

  # Aufgrund der Rekursion muss das Verzeichnishandle lokal sein
my $verzeichnish = gensym();

opendir($verzeichnish, $verzeichnis) || 
die "Fehler beim Oeffnen: $!\n";

while(my $eintrag = readdir($verzeichnish)) {

    # Verzeichnisse . und .. ignorieren
next if ($eintrag eq "." || $eintrag eq "..");

    # Regulaere Datei mit passendem Namen?
if (index(lc($eintrag), lc($name)) >= 0 && 
        (! -d "$verzeichnis/$eintrag")) {
print "$verzeichnis/$eintrag\n";
       $count++;
    }   

    # Selbstaufruf fuer Unterverzeichnis?
if (-d "$verzeichnis/$eintrag") {
      $count += &VerzeichnisAuslesen("$verzeichnis/$eintrag", $name);
    }

  }
closedir($verzeichnish);

return $count;
}
