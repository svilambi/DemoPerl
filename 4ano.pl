$wordcount = 0;

  $line = <STDIN>;

  while ($line ne "") {

         chop ($line);

          @words = split(/ +/, $line);

          $wordcount += @words;

          $line = <STDIN>;
		  
		  
}

 print ("Total number of words: $wordcount\n");
 
 
