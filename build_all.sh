./export_pcb.sh "./modules/register/register.kicad_pcb" "./modules-png" "./modules-gerber"
./export_scheme.sh "./modules/register/register.kicad_sch" "./modules-png"

cd labs
./build.sh
cd ..

rm ./modules-png/*.svg
