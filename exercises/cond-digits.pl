#!/usr/bin/perl

use strict;
use warnings;

print "Bitte geben Sie eine Zahl zwischen 0 und 999 ein: ";
my $zahl = <STDIN>;

if ( ($zahl >= 0) && ($zahl <= 9) ) {
    print "$zahl ist einstellig.\n";
} elsif ( ($zahl >= 10) && ($zahl <= 99) ) {
    print "$zahl ist zweistellig.\n";
} elseif ( ($zahl >= 100) && ($zahl <= 999) ) {
    print "$zahl ist dreistellig.\n";
} else {
    print "$zahl liegt nicht zwischen 0 und 999!\n";
}

