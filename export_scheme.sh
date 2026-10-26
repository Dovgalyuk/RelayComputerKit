#./export_scheme.sh "./modules/switches/switches.kicad_sch" "./modules-png"
kicad-cli sch export svg --exclude-drawing-sheet --black-and-white --output $3 $1/$2/$2.kicad_sch
inkscape $3/$2.svg -d 300 --export-area-drawing -o $3/$2-scheme.png

# BOM
kicad-cli sch export bom --group-by Footprint --output $4/$2 $1/$2/$2.kicad_sch
