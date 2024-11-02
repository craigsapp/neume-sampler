#!/usr/bin/env perl
# Currently only uses wget (on mac use homebrew command: "brew install wget").

use strict;

my $pfile = "PAGE_INDEX.json";

my $mid = "AKfycbwC8exTdRM1QO9SRE34inRdHwQ6O-lU5hImkmx1ra5SHDYP5P1FNUbCDxDH5sSIwX0h";

my $url = "https://script.google.com/macros/s/$mid/exec";


`wget -O $pfile "$url" 2> /dev/null`;

open (FILE, $pfile) or die "Cannot open $pfile\n";
my @contents = <FILE>;
chomp @contents;
close FILE;

my @gids;
my $gid = -1;

for (my $i=0; $i<@contents; $i++) {
	my $line = $contents[$i];
	chomp $line;
	if ($line =~ /GID"\s*:\s*"(\d+)"/) {
		$gid = $1;
		print "Found GID $gid in page index\n";
	}
	if ($line =~ /Hide"\s*:\s*""/) {
		if ($gid > 0) {
			$gids[@gids] = $gid;
			print "\tStoring GID $gid for download\n";
		}
		$gid = -1;
	}
}

foreach my $entry (@gids) {
	my $url = "https://script.google.com/macros/s/$mid/exec?gid=$entry";
	print "Downloading page $entry\n";
	`wget $url -O "page-$entry.json" 2> /dev/null`;
}


my $date = `date`;
open(FILE, ">last-downloaded.txt") or die;
print FILE $date;
close FILE;



