# Beeping Easter Egg 🥚🔊

<p float="center">
  <img src="./renders/render_top_isometric.png" width="400" />
  <img src="./renders/render_bottom_isometric.png" width="400" />
</p>
<p float="center">
  <img src="./renders/render_top.png" width="400" /> 
  <img src="./renders/render_bottom.png" width="400" />
</p>
<img src="renders/beeping-easter-egg.svg" />

## Generate fabrication files
```
docker run --rm -v ${PWD}:/app -e ROWS=4 -e COLS=3 kicad/kicad:9.0 bash /app/scripts/generate-fabrication-files.sh
```

## Generate render pngs and schematic svg
```
docker run --rm -v ${PWD}:/app kicad/kicad:9.0 bash /app/scripts/generate-renders-for-readme.sh
```

## KiCad plugins / tools / scripts
* https://github.com/yaqwsx/KiKit
* https://github.com/uPesy/easyeda2kicad.py

## Component calculations
[component-calculations.md](component-calculations.md)

## TODO
* Try KiCad jobset to replace generate-renders-for-readme.sh
* Use official KiKit docker image once it supports KiCad 9
* Find a proper 3D model for switch
