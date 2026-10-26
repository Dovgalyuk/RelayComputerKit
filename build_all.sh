./export_pcb.sh "./modules" "adder" "./modules-png" "./modules-gerber"
./export_pcb.sh "./modules" "bus" "./modules-png" "./modules-gerber"
./export_pcb.sh "./modules" "clock" "./modules-png" "./modules-gerber"
./export_pcb.sh "./modules" "decoder" "./modules-png" "./modules-gerber"
./export_pcb.sh "./modules" "binary" "./modules-png" "./modules-gerber"
./export_pcb.sh "./modules" "unary" "./modules-png" "./modules-gerber"
./export_pcb.sh "./modules" "power" "./modules-png" "./modules-gerber"
./export_pcb.sh "./modules" "register" "./modules-png" "./modules-gerber"
./export_pcb.sh "./modules" "rom" "./modules-png" "./modules-gerber"
./export_pcb.sh "./modules" "matrix" "./modules-png" "./modules-gerber"
./export_pcb.sh "./modules" "switches" "./modules-png" "./modules-gerber"
./export_scheme.sh "./modules" "adder" "./modules-png" "./modules-bom"
./export_scheme.sh "./modules" "bus" "./modules-png" "./modules-bom"
./export_scheme.sh "./modules" "clock" "./modules-png" "./modules-bom"
./export_scheme.sh "./modules" "decoder" "./modules-png" "./modules-bom"
./export_scheme.sh "./modules" "binary" "./modules-png" "./modules-bom"
./export_scheme.sh "./modules" "unary" "./modules-png" "./modules-bom"
./export_scheme.sh "./modules" "power" "./modules-png" "./modules-bom"
./export_scheme.sh "./modules" "register" "./modules-png" "./modules-bom"
./export_scheme.sh "./modules" "rom" "./modules-png" "./modules-bom"
./export_scheme.sh "./modules" "matrix" "./modules-png" "./modules-bom"
./export_scheme.sh "./modules" "switches" "./modules-png" "./modules-bom"

./utils/parse-bom.py > labs/appendix/bom.tex

cd labs
./build.sh
cd ..
