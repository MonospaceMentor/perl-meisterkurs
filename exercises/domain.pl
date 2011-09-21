#!/usr/bin/perl

use strict;
use warnings;

print "\nBitte geben Sie eine Web-Adresse ein: ";
my $webadresse = <STDIN>;
chomp($webadresse);

$webadresse = substr($webadresse, 7);

my $pos1 = index($webadresse, ".");
my $subdomain = substr($webadresse, 0, $pos1);
my $pos2= rindex($webadresse, ".");
my $domain = substr($webadresse, $pos1+1, $pos2-$pos1-1);
my $toplevel = substr($webadresse, $pos2+1);

print "Subdomain: $subdomain\n";
print "Domainname: $domain\n";
print "Toplevel-Domain: $toplevel\n";
