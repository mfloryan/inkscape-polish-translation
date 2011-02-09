#!/usr/bin/perl

foreach $file (`ls *.po`) {

	if ($file =~ /([a-z]*)-([a-z-]*)\.po/) {
	$copy = "cp $1-$2.po ../../inkscape-doc/$2/pl.po";
	print $copy, " \n";
	system $copy;
}	

}

