#!/usr/bin/perl

#
# band.pl -- Generate likely-sounding band names.
#
# Apologies to Beavis and Butthead's "This Book Sucks"
#
# Charley Kline, University of Illinois
#   in a lame moment late in 1994.
#

@a = ("Satan's", "Flying", "Burnt", "Black", "Steel", "Atomic", "Poison",
      "German", "Children of the", "Screaming", "Golden", "Def", "Fatal",
      "Smoking", "Albino");

@b = ("Death", "Candy", "Fire", "Motor", "Fokker", "Waste", "Monkey",
      "Pancreas", "Lion", "Love", "Coma", "Clam", "Desire", "War", "Meat");

@c = ("Ship", "Wheel", "Head", "Peppers", "Maiden", "Basket", "Boner",
      "Drug", "Machine", "Ryche", "Rats", "Stick", "Snake", "Pod");

srand time ^ $$;

print "\n     INSTANT BAND NAMES\n     ------- ---- -----\n";
foreach (1 .. 20) {
    $i = $a[rand 1+$#a];
    $j = $b[rand 1+$#b];
    $k = $c[rand 1+$#c];
    $l = rand 3;
    print ("   $i $j $k\n"), next if $l < 1;
    print ("   $i $j\n"), next if $l < 2;
    print  "   $j $k\n";
    }
