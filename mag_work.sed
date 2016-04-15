#!/bin/sed -f

# Replace input files
s/top\.tex/top_empty.tex/g;

# Common replaces
s/\\todo{.*}//g;
s/\\f\([\ _^]\)/\\varphi\1/g;
s/\\diff\([\ _^]\)/\\dif \!\1/g;
s/\\dif\([\ _^]\)/ d\1/g;
s/\\qq\([\ _^]\)/\\qquad\1/g;
s/\\q\([\ _^]\)/\\quad\1/g;
s/\\l\([,$\\\}\ _^]\)/_\\circledcirc\1/g;
s/\\s\([-\\\.\\\)\\\},$ _^]\)/_\\odot\1/g;
s/\\c\([,\\\.$\\\}\ _^]\)/_\\circ\1/g;
s/\\sc\([,$\\\}\ _^]\)/_s\1/g;
s/\\o\([,$\\\}\ _^]\)/_o\1/g;
s/\\en\([,$\ _^]\)/_e\1/g;
s/\\de\([\ _^]\)/\\partial\1/g;
s/\\df\([\{\ _^]\)/\\dfrac\1/g;
s/\\fr\([\{\ _^]\)/\\frac\1/g;
s/\\om\([$\}\)\ _^]\)/\\omega\1/g;
s/\\Lap\([\{\ _^]\)/\\Delta\1/g;
s/\\nab\([\)\ _^]\)/\\nabla\1/g;
s/\\P\([\ _^]\)/\\Psi\1/g;
s/\\F\([\ _^]\)/\\bar{\\Phi}\1/g;
s/\\u\([\ _^]\)/\\bar{u}\1/g;
s/\\v\([\ _^]\)/\\bar{v}\1/g;
s/\\eps\([\ _^]\)/\\varepsilon\1/g;
s/\\Q\([\ _^]\)/\\theta\1/g;
s/\\la\([\ _^]\)/\\lambda\1/g;
s/\\al\([\ _^]\)/\\alpha\1/g;
s/\\be\([\ _^]\)/\\beta\1/g;
s/\\ga\([\ _^]\)/\\gamma\1/g;
s/\\si\([\ _^]\)/\\sigma\1/g;
s/\\x\([\ _^]\)/\\xi\1/g;
s/\\z\([\ _^]\)/\\zeta\1/g;
s/\\r\([\ _^]\)/\\rho\1/g;
s/\\n\([\ _^]\)/\\eta\1/g;
s/\\t\([\ _^]\)/\\tau\1/g;
s/\\er\([\ _^]\)/\\bar{e}_r\1/g;
s/\\dotm\([\ _^]\)/\\!\\cdot\\!\1/g;

#Math operators
s/\\grad\([\ _^]\)/ grad\1/g;
s/\\e\([\ _^]\)/ e\1/g;
s/\\diver\([\(\ _^]\)/ div\1/g;