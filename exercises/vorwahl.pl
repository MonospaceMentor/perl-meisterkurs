#!/usr/bin/perl

use strict;
use warnings;

my %vorwahlen = ( "Berlin"     => "030",
    "Hamburg"    => "040",
    "Muenchen"    => "089",
    "Stuttgart"  => "0711",
    "Frankfurt"  => "069",
    "Leipzig"    => "0341",
    "Duesseldorf" => "0211",
    "Koeln"       => "0221",
    "Rostock"    => "0381",
    "Dresden"    => "0351",
    "Wiesbaden"  => "0611",
    "Hannover"   => "0511",
    "Erfurt"     => "0361");

print "Die Vorwahlen folgender Staedte sind gespeichert:\n";
foreach my $ort (sort keys %vorwahlen) {
    print "$ort ";
}

my $nochmal;
do {

    print "\nBitte den gewuenschten Ort eingeben: ";
    my $ort = <>;
    chomp($ort);
    
    if (exists $vorwahlen{$ort}) {
        print "Die Vorwahl fuer ", $ort, " lautet ", $vorwahlen{$ort}, ".\n";
    } else {
        print "Dieser Ort ist nicht gespeichert!\n";
    }
    
    print "\nWeitere Vorwahl suchen (j/n)? ";
    $nochmal = <>;
    chomp($nochmal);

} while ($nochmal eq "j");
