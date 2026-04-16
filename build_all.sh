./export_pcb.sh "./modules" "bus" "./modules-png" "./modules-gerber"
./export_pcb.sh "./modules" "decoder" "./modules-png" "./modules-gerber"
./export_pcb.sh "./modules" "logic_binary" "./modules-png" "./modules-gerber"
./export_pcb.sh "./modules" "logic_unary" "./modules-png" "./modules-gerber"
./export_pcb.sh "./modules" "power" "./modules-png" "./modules-gerber"
./export_pcb.sh "./modules" "register" "./modules-png" "./modules-gerber"
./export_pcb.sh "./modules" "switchboard" "./modules-png" "./modules-gerber"
./export_pcb.sh "./modules" "switches" "./modules-png" "./modules-gerber"
./export_scheme.sh "./modules" "bus" "./modules-png"
./export_scheme.sh "./modules" "decoder" "./modules-png"
./export_scheme.sh "./modules" "logic_binary" "./modules-png"
./export_scheme.sh "./modules" "logic_unary" "./modules-png"
./export_scheme.sh "./modules" "power" "./modules-png"
./export_scheme.sh "./modules" "register" "./modules-png"
./export_scheme.sh "./modules" "switchboard" "./modules-png"
./export_scheme.sh "./modules" "switches" "./modules-png"

cd labs
./build.sh
cd ..

rm ./modules-png/*.svg
