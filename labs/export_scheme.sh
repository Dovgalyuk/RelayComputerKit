kicad-cli sch export svg --exclude-drawing-sheet --black-and-white --output schemes $1
inkscape schemes/$(basename "$1" | cut -d. -f1).svg -d 300 -o schemes/$(basename "$1" | cut -d. -f1).png
