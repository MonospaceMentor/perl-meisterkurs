#!/usr/bin/perl

my %ort_mit_vorwahl = (
        '0621' => 'Mannheim',
        '0721' => 'Karlsruhe',
        '0761' => 'Freiburg',
        );
my $ort_gesucht = 'Freiburg';
        
my $vorwahl;

foreach $vorwahl (keys %ort_mit_vorwahl) {
    last if 
        $ort_mit_vorwahl{$vorwahl} eq $ort_gesucht;
}

print 'Die Vorwahl von ', $ort_gesucht,
    ' lautet ', $vorwahl, "\n";