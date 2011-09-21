#!/usr/bin/perl

use strict;
use warnings;

my @daten;

do {

	print "Geben Sie Vor- und Nachname, durch Leerzeichen getrennt, ein: ";
	my $name = <STDIN>;

	my ($vorname, $nachname) = split( / /, $name );

	push @daten, { vorname => $vorname, nachname => $nachname };

	print "Gespeichert. Weitere Eingaben (j/n)? ";
	my $more = <STDIN>;
	chomp($more);

} until $more eq 'n';

foreach ( @daten ) {
	printf "%s, %s\n", $_->{nachname}, $_->{vorname};
}
