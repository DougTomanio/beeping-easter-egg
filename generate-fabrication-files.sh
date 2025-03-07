# todo: use the official kikit docker image once it supports kikad 9, or at least roll own proper docker image for this
sudo apt update
sudo apt install python3-pip -y
pip install --break-system-packages kikit
/home/kicad/.local/bin/kikit fab jlcpcb /app/beeping-easter-egg.kicad_pcb /app/fab --assembly --schematic /app/beeping-easter-egg.kicad_sch