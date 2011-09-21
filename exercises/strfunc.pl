#!/usr/bin/perl

use strict;
use warnings;

print "\nBitte geben Sie einen Text ein: ";
my $text = <STDIN>;
chomp($text);

print "Die Laenge betraegt " . length($text) . " Zeichen\n";

my $pos = index($text, " ");
my $wort = substr($text, 0, $pos);
print "Das erste Wort lautet " . uc($wort) . "\n";

$pos = rindex($text, " ");
$wort = substr($text, $pos);
print "Das letzte Wort lautet " . uc($wort) . "\n";
