#!/usr/bin/env perl6

my \entries = dir(%*ENV<HOME>||%*ENV<USERPROFILE>).grep(*.f)>>.basename.grep(* !~~ /^\./).cache;
my \max_len = entries>>.chars.unique.sort.reverse.first;
my \h_ruler = '+' ~ '-' x max_len ~ '+';

(h_ruler, entries.sort>>.fmt("|%-{max_len}s|"), h_ruler)>>.say;

