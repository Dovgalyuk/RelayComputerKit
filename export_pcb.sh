# generate picture
kicad-cli pcb export svg -l F.Silkscreen,User.Drawings,Edge.Cuts,F.Fab --exclude-drawing-sheet --page-size-mode 2 --black-and-white --output $2/temp.svg $1
inkscape $2/temp.svg -d 300 --export-area-drawing -o $2/$(basename "$1" | cut -d. -f1)-pcb.png
rm $2/temp.svg

#generate gerbers
kicad-cli pcb export gerbers --layers F.Cu,B.Cu,F.Paste,B.Paste,F.Silkscreen,B.Silkscreen,F.Mask,B.Mask,Edge.Cuts --no-protel-ext --output $3/$(basename "$1" | cut -d. -f1) $1
kicad-cli pcb export drill --format excellon --excellon-separate-th --output $3/$(basename "$1" | cut -d. -f1) $1

#register-B_Cu.gbr
#register-B_Mask.gbr
#register-B_Paste.gbr
#register-B_Silkscreen.gbr
#register-Edge_Cuts.gbr
#register-F_Cu.gbr
#register-F_Mask.gbr
#register-F_Paste.gbr
#register-F_Silkscreen.gbr
#register-job.gbrjob
#register-NPTH.drl
#register-PTH.drl
