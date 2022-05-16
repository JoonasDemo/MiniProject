addArchitecture:
  cmd.run:
    - name: sudo dpkg --add-architecture i386
    - name: sudo apt update
    - name: sudo apt install software-properties-common
    - name: sudo apt update
    - unless:
      - ls /lib/games/steam/

installstuff:
  pkg.installed:
    - name: cataclysm-dda-data
    - name: cataclysm-dda-sdl

Installsteam:
  cmd.run:
    - name: sudo apt install steam
    - unless:
      - ls /lib/games/steam/
