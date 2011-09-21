#!/usr/bin/perl

use strict;
use warnings;

my $datei=$ARGV[0];

if (! $datei) {
  print "Loescht alle HTML-Tags in einer Datei\n\n";
  print "$0 Dateiname.html|Dateiname.htm\n";
} else {
  die "Bitte nur HTML-Dateien mit den Endungen .html oder .htm!\n\n" 
    if ($datei !~ /(.+)\.(html|htm)/i);

  my $dateiname = $1;

  open($handle, "<$datei") || die "Fehler beim Oeffnen: $!\n";

  my $inhalt;
  {
    local $/;
    $inhalt = <$handle>;
  }

  close($handle);

  $inhalt =~ s/<[!>]+>//g;

  open($handle, ">$dateiname.txt") || die "Fehler beim Oeffnen: $!\n";
  print $handle $inhalt;
  close($handle);
}
