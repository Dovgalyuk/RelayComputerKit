for d in ./schemes/*/ ; do
  for f in $d/*.kicad_sch; do
    ./export_scheme.sh $f &
  done
  wait
  rm ${d%?}.png
done
rm schemes/*.svg
