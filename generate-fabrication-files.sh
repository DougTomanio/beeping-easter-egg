# todo: use the official kikit docker image once it supports kikad 9, or at least roll own proper docker image for this

# quick check to make sure we're running in the kicad docker container
if [ "$HOME" == "/home/kicad" ]; then
    sudo apt update
    sudo apt install python3-pip -y
    pip install --break-system-packages kikit
    PATH=$PATH:/home/kicad/.local/bin
fi

kikit panelize \
    --layout 'hspace: 2mm; vspace: 2mm; rows: 2; cols: 2' \
    --tabs 'type: fixed' \
    --cuts 'type: mousebites' \
    --framing 'type: railstb' \
    --tooling 'type: 4hole; hoffset: 5mm; voffset: 2.5mm' \
    --fiducials 'type: 4fid; hoffset: 10mm; voffset: 2.5mm; coppersize: 2mm' \
    --text 'type: simple; voffset: 2.5mm; text: JLCJLCJLCJLC' \
    '/app/beeping-easter-egg.kicad_pcb' '/app/beeping-easter-egg-panelized.kicad_pcb'

kikit fab jlcpcb /app/beeping-easter-egg.kicad_pcb /app/fab --assembly --schematic /app/beeping-easter-egg.kicad_sch
kikit fab jlcpcb /app/beeping-easter-egg-panelized.kicad_pcb /app/fab-panelized --assembly --schematic /app/beeping-easter-egg.kicad_sch
