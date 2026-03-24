./export_pcb.sh "./modules" "register" "./modules-png" "./modules-gerber"
./export_pcb.sh "./modules" "switches" "./modules-png" "./modules-gerber"
./export_pcb.sh "./modules" "logic_unary" "./modules-png" "./modules-gerber"
./export_scheme.sh "./modules" "register" "./modules-png"
./export_scheme.sh "./modules" "switches" "./modules-png"
./export_scheme.sh "./modules" "logic_unary" "./modules-png"

cd labs
./build.sh
cd ..

rm ./modules-png/*.svg
