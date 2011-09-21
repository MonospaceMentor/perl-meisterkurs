#!/usr/bin/perl

use strict;
use warnings;

my @tabelle;

foreach $zeile ( 0..9 ) {

my @spalten;

foreach $spalte ( 0..9 ) {
push @spalten, $zeile * $spalte;
  }

push @tabelle, \@spalten;

}
