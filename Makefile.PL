## $Id: Makefile.PL,v 1.2 2002/07/26 02:29:29 dshanks Exp $
use ExtUtils::MakeMaker;

my $resultstat = system("./configure.pl");

# If the configure script returns an error
if ( $resultstat != 0 ) {
  die "EXITSTAT: $resultstat \n";
}

WriteMakefile(
    'NAME'		=> 'BigBrother::Object',
    'VERSION_FROM'	=> 'Object.pm', 
    'PREREQ_PM'		=> {}, 
    ($] >= 5.005 ?   
      (ABSTRACT_FROM => 'Object.pm', 
       AUTHOR     => 'Don Shanks <perldev@bpss.net>') : ()),
);
