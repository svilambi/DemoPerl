

print ("Word to search for: $ARGV[0]\n");

  $filecount = 1;

  $totalwordcount = 0;

  while ($filecount <= @ARGV-1) {

          unless (open (INFILE, $ARGV[$filecount])) {

                 die ("Can't open input file $ARGV[$filecount]\n");

          }

         $wordcount = 0;

         while ($line = <INFILE>) {

                 chop ($line);

                 @words = split(/ /, $line);

                 $w = 1;

                 while ($w <= @words) {

                         if ($words[$w-1] eq $ARGV[0]) {

                                 $wordcount += 1;

                         }

                         $w++;

                 }

         }

         print ("occurrences in file $ARGV[$filecount]: ");

         print ("$wordcount\n");

         $filecount++;

         $totalwordcount += $wordcount;

 }

print ("total number of occurrences: $totalwordcount\n");