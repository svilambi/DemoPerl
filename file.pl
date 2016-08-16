use strict;
use warnings;

open FILE, ">result.txt" or die $!;

 
if (open(FILE1, "anoinputnames.txt")) 
{
 my $line1 = <FILE1>;
print "$line1";
while (  my $line1 ne "")
{

			 our $fragment =  substr  my $line1, index( $line1, '=$')+1;
			print FILE  $fragment;
				 #print (my $line1);
				 $line1 = <FILE1>;
				 if (open(FILE2, "changeset.txt")) 
				 {
				  my $line2 = <FILE2>;
				 while ( my $line2 ne "")
					{
					our $fragment1 =  substr  $line2, index( $line2, 'edit $')+1;
					if (index(lc($fragment1), lc( $fragment)) != -1) 
							{
							print "our $fragment1 contains  our $fragment\n";
							} 
					}
				 }
          }
		  
		  close FILE;
}



  