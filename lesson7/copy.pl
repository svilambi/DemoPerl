use strict;

use File::Find;

use File::Copy;

my $line = 'C:\Users\svilambi\Desktop\Source';

opendir MYDIR, $line or die "Could not opendir $line: $!\n";

my @allfiles = grep { $_ ne '.' and $_ ne '..' } readdir MYDIR ;
my @files    = grep { !-d } @allfiles ;
my @dirs     = grep {  -d } @allfiles ;

my @select_files = join($/, grep( /\.zip$/, @allfiles ));

my @list="C:\Users\svilambi\Desktop\Source\*.zip";
foreach my $zipfile(@list)
{
copy(my $file,"C:\Users\svilambi\Desktop\Dest");
}


copy("$File::Find::Core.zip","C:\\Users\\svilambi\\Desktop\\Dest\\/$_");

print("hai\n");
print(@files);
print("\nbye\n");
print "Current directory contains " . @files . " files and " . @dirs . " directories.\n" ;
 
print join("\n", @allfiles);

print("\nhai\n");
print join("\n", @select_files);
closedir(MYDIR);