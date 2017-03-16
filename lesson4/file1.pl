if (open(MYFILE, "1ano.pl")) {

         $line = <MYFILE>;

         while ($line ne "") {

                 print ($line);

                  $line = <MYFILE>;

          }

  }