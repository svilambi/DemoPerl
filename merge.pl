
open (INFILE1, "merge1.txt") ||

          die ("Cannot open input file merge1\n");

  open (INFILE2, "merge2.txt") ||

          die ("Cannot open input file merge2\n");

  $line1 = <INFILE1>;

  $line2 = <INFILE2>;

  print("first file contains : \n\n\n");
  while ($line1 ne "" ) 
  {

         if ($line1 ne "") {

                 print ($line1);

                 $line1 = <INFILE1>;

         }
		 
	}
		
		print("\n\n\nsecond file contains: \n\n\n");
		 while($line2 ne "")
		 {

         if ($line2 ne "") {

                 print ($line2);

                 $line2 = <INFILE2>;

         }

 }
 