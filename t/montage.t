#!/usr/local/bin/perl
#
# Test montage method.
#
BEGIN { $| = 1; print "1..1\n"; }
END {print "not ok 1\n" unless $loaded;}
use Image::Magick;
$loaded=1;
$image=Image::Magick->new;
$x=$image->ReadImage('xc:black');
print "not ok 1\n" if "$x";
exit if "$x";
$montage=$image->Montage(geometry=>'160x160+10+10>', shadow=>'true',
  label=>'%f', texture=>'granite:');
print "not " unless ref($montage);
print "ok 1\n";
