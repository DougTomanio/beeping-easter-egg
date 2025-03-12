# todo: use the official kikit docker image once it supports kikad 9, or at least roll own proper docker image for this

# quick check to make sure we're running in the kicad docker container
if [ "$HOME" == "/home/kicad" ]; then
    sudo apt update
    sudo apt install python3-pip -y
    pip install --break-system-packages kikit
    PATH=$PATH:/home/kicad/.local/bin
fi

kikit panelize \
    --layout "hspace: 8mm; vspace: 8mm; rows: ${ROWS=4}; cols: ${COLS=3}" \
    --tabs 'type: fixed; vwidth: 5mm; hwidth: 5mm; hcount: 0; vcount: 6; mindistance: 10mm;' \
    --cuts "type: mousebites" \
    --framing 'type: tightframe' \
    --tooling 'type: 4hole; size: 1.152mm; soldermaskmargin: 0.148mm; hoffset: 5mm; voffset: 2.5mm' \
    --fiducials "type: 3fid; hoffset: 20mm; voffset: 3.85mm; coppersize: 2mm" \
    --text "type: simple; anchor: ml; orientation: 90deg; hoffset: 2.5mm; text: JLCJLCJLCJLC" \
    "/app/beeping-easter-egg.kicad_pcb" "/app/beeping-easter-egg-panelized.kicad_pcb"

kikit fab jlcpcb /app/beeping-easter-egg-panelized.kicad_pcb /app/fab --assembly --schematic /app/beeping-easter-egg.kicad_sch
