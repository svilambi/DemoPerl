@input = <STDIN>;

chop (@input);

# first, reverse the order of the words in each line

$currline = 1;

while ($currline <= @input) {

@words = split(/ /, $input[$currline-1]);

@words = reverse(@words);

$input[$currline-1] = join(" ", @words, "\n");

$currline++;

}

# now, reverse the order of the input lines and print them

 @input = reverse(@input);

 print (@input);