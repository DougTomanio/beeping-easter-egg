kicad-cli pcb render --floor --rotate \'-45,0,45\' -o /app/render_top_isometric.png /app/beeping-easter-egg.kicad_pcb
kicad-cli pcb render --floor --rotate \'-45,180,45\' -o /app/render_bottom_isometric.png /app/beeping-easter-egg.kicad_pcb
kicad-cli pcb render --floor --rotate \'0,0,0\' -o /app/render_top.png /app/beeping-easter-egg.kicad_pcb
kicad-cli pcb render --floor --rotate \'0,180,0\' -o /app/render_bottom.png /app/beeping-easter-egg.kicad_pcb
kicad-cli sch export svg -o /app /app/beeping-easter-egg.kicad_sch
