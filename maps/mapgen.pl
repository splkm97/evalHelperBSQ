#!/usr/bin/perl

use warnings;
use strict;
die "program x y density . o x" unless (scalar(@ARGV) == 6);
my ($x, $y, $density, $empty, $obj, $res) = @ARGV;
print "${y}${empty}${obj}${res}\n";
for (my $i = 0; $i < $y; $i++) {
	for (my $j = 0; $j < $x; $j++) {
		if (int(rand($y) * 2) < $density) {
			print "$obj";
		}
		else {
			print "$empty";
		}
	}
	print "\n";
}
