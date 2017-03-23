#!/usr/bin/env perl6

sub binary($n) {
	return $n if $n == 0 | 1;
	return binary($n+>1) ~ $n%2;
}

(0,45,2,255,1).map(-> $n { ($n, binary($n)) }).sort>>.join("\t")>>.say;

