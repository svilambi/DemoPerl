use strict;
use warnings;

sub main {
    my $directory = "//172.16.170.141/c$/Users/NYenuganti/Desktop/Sunil2/hai";
    
   unless(mkdir $directory) {
     die "Unable to create $directory or $directory already exists\n";
    }
}

main();