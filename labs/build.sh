./export_schemes.sh
pdflatex labs.tex
biber labs
pdflatex labs.tex
rm *.aux part1/*.aux part2/*.aux part3/*.aux
