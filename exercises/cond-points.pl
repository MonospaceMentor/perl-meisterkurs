#!/usr/bin/perl

use strict;
use warnings;

my $eingabe;   # muss _vor_ fussgesteuerten Schleifen deklariert werden

do {
    print "Bitte geben Sie die Punktzahl an: ";
    my $punkte = <STDIN>;
    chomp($punkte);
    
    if ($punkte > 100) {
        print "Eine Punktzahl groesser als 100 ist nicht moeglich!\n";
    } else {
        if ($punkte > 91) {
            print "Note 1\n";
        } elsif ($punkte > 76) {
            print "Note 2\n";
        } elsif ($punkte > 61) {
            print "Note 3\n";
        } elsif ($punkte > 46) {
            print "Note 4\n";
        } elsif ($punkte > 31) {
            print "Note 5\n";
        } else {
            print "Note 6\n";
        }
    }
    print "Noch mehr Punkte auswerten (j/n)? ";
    $eingabe = <STDIN>;
    chomp($eingabe);
} while ($eingabe eq "j");

