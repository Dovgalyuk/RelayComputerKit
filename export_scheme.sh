kicad-cli sch export svg --exclude-drawing-sheet --black-and-white --output $2 $1
inkscape $2/$(basename "$1" | cut -d. -f1).svg -d 300 --export-area-drawing -o $2/$(basename "$1" | cut -d. -f1)-scheme.png
