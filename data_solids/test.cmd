echo off
echo %1
REM
REM   Generic form: sed "+string1+string2+g"
REM
REM   Single character: .
REM   Start of line:    ^
REM   End of line:      $
REM   One character from a set: [0123456789] or [0-9]
REM
REM   Replace ">n.n " with "> " sed "s+>[0-9]\.[0-9] +> +g" %1.html > bits
REM
REM
REM
REM  Pay attention if a multiple command is used - make sure the input and output match up!
REM  (Line up the re-direct symbol to make this easier)
REM
REM sed 's+<a href="http://www.fiz-karlsruhe.de/icsd.html/">http://www.fiz-karlsruhe.de/icsd.html/</a>+<a href="https://icsd.fiz-karlsruhe.de/search/index.xhtml">https://icsd.fiz-karlsruhe.de/search/index.xhtml</a>+g'   %1.html  > bits.txt
 sed "s+http:\/\/www.fiz-karlsruhe.de\/icsd.html+https://icsd.fiz-karlsruhe.de/search/index.xhtml+g"                                         %1  > bit
del %1
mv bit %1

