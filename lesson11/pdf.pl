# use strict;
# use warnings;
# use Text::FromAny;

# my $tFromAny = Text::FromAny->new(
    # file => 'C:\Users\svilambi\Desktop\Notepad\lokam\doc\book1.pdf');
# print my $text = $tFromAny->text, "\n";

# use PDF::Extract;
# $pdf = new PDF::Extract( PDFDoc=>'C:\Users\svilambi\Desktop\Notepad\lokam\doc\book2.pdf' );
# $pdf->getPDFExtract( PDFPages=>$PDFPages );
# print "Content-Type text/plain\n\n<xmp>",  $pdf->getVars("PDFExtract");
# print $pdf->getVars("PDFError");

 use PDF::Extract;
 $pdf=new PDF::Extract( PDFDoc=>"book2.pdf");
 $i=1;
 $i++ while ( $pdf->savePDFExtract( PDFPages=>$i ) );