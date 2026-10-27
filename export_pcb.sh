# generate picture
kicad-cli pcb export svg -l F.Silkscreen,User.Drawings,Edge.Cuts,F.Fab --exclude-drawing-sheet --page-size-mode 2 --black-and-white --output $3/temp.svg $1/$2/$2.kicad_pcb
inkscape $3/temp.svg -d 300 --export-area-drawing -o $3/$2-pcb.png
$3/temp.svg

#generate gerbers
kicad-cli pcb export gerbers --layers F.Cu,B.Cu,F.Paste,B.Paste,F.Silkscreen,B.Silkscreen,F.Mask,B.Mask,Edge.Cuts --no-protel-ext --output $4/$2 $1/$2/$2.kicad_pcb
kicad-cli pcb export drill --format excellon --excellon-separate-th --output $4/$2 $1/$2/$2.kicad_pcb
zip -j $4/$2.zip $4/$2/*

kicad-cli pcb render --output ./modules-3d/$2.png --rotate -45,0,45 --zoom 0.75 -w 1000 --pan 0,-1,0 $1/$2/$2.kicad_pcb
