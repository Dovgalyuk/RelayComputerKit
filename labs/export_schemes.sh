for f in ./schemes/operations/*.kicad_sch; do
  ./export_scheme.sh $f
done
rm schemes/operations.png
rm schemes/*.svg