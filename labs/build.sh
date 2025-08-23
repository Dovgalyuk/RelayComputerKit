./export_schemes.sh
pdflatex labs.tex
biber labs
pdflatex labs.tex
rm *.aux
