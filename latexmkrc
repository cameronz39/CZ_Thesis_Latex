# Custom dependency and function for nomencl package 
add_cus_dep( 'nlo', 'nls', 0, 'makenlo2nls' );
sub makenlo2nls {
system( "makeindex -s nomencl.ist -o \"$_[0].nls\" \"$_[0].nlo\"" );
}
# Force latexmk to use biber instead of bibtex
$bibtex_use = 2;
$pdf_mode = 1;  # always build pdf
$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode -file-line-error';