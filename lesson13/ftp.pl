use List::MoreUtils qw/ uniq /;
use File::Basename;
use File::stat;
use File::Copy;
use File::Copy::Recursive;
use File::Find;
use Net::FTP;
$patch_dir="E:/Patches/Root/test/";
$patch_name="GenericPivotReport";
$ftp_location="/releases/temp";
&ftp_upload();

sub ftp_upload{
	
	print "ftp uploading...\n";
	$ftp = new Net::FTP("ftp.amphorainc.com", Debug => 0,Passive => 1,BlockSize => 118192);
	print "Connected.\n";
	$ftp->login("build", "RandomF2015");
	#$ftp->binary;
	#$bin=$ftp->type;
	$ftp->cwd("$ftp_location");
	$ftp->put("$patch_dir/$patch_name.zip");
	#$size = $ftp->size("$ftp_location/$patch_name.zip");
	#print "after uploaded size is $size\n";
	$ftp->quit;
	print "ftp uploaded\n";
}