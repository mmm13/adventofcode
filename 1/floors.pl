#!/usr/bin/perl
#
# Program to do the obvious
#

open(DATA, "<input.txt") or die "Couldn't open file inputdata, $!";

while(<DATA>)
{
   #print "$cnt :  $_";
   print "$_ \n";
   $floor=0;
   $cnt=1;
   foreach $direction (split //, $_) {
#       print "$direction";
       if ( $direction eq "(" )
          { $floor++;}
       if ( $direction eq ")" )
        {$floor--;}
      if ( $floor < 0)
        {print " DIRECTION $cnt \n"; last;}
    $cnt++;
  } #foreach

print "FLOOR:  $floor \n";

}#while

close DATA;
