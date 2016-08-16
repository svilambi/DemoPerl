$thecount = 0;

  print ("Enter the input here:\n");

  $line = <STDIN>;

  while ($line ne "") {

          if ($line =~ /\Bthe\B/) {

                  $thecount += 1;

          }

         $line = <STDIN>;

 }

  print ("Number of lines containing 'the': $thecount\n");