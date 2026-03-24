#./export_scheme.sh "./modules/switches/switches.kicad_sch" "./modules-png"
kicad-cli sch export svg --exclude-drawing-sheet --black-and-white --output $3 $1/$2/$2.kicad_sch
inkscape $3/$2.svg -d 300 --export-area-drawing -o $3/$2-scheme.png
