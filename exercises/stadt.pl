#!/usr/bin/perl

use strict;
use warnings;

my @staedte = qw(Berlin Leipzig München Hannover Rostock Stuttgart Köln);

print "Bitte geben Sie einen Städtenamen ein: ";
my $stadt = <STDIN>;
chomp($stadt);

if (PruefeStadt($stadt, \@staedte)) {
print "$stadt ist in der Liste enthalten\n";
} else {
print "$stadt ist nicht in der Liste enthalten\n";
}

sub PruefeStadt {
my ($stadt, $staedteref) = @_;

    # alle Staedtenamen durchlaufen
foreach (@$staedteref) {

if (lc($_) eq lc($stadt)) {

            # Uebereinstimmung gefunden!
return 1;

        }

    }

    # keine eine Uebereinstimmung gefunden. :(
return 0;
}

