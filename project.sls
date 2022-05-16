addArchitecture:
  cmd.run:
    - name: sudo dpkg --add-architecture i386
    - name: sudo apt update
    - name: sudo apt install software-properties-common
    - name: sudo apt update
    - unless:
      - ls /lib/games/steam/

Cata:
  pkg.installed:
    - name: cataclysm-dda-data
    - name: cataclysm-dda-sdl

Dworf:
  pkg.installed:
    - name: dwarf-fortress
    - name: dwarf-fortress-data

Installsteam:
  cmd.run:
    - name: sudo apt install steam
    - unless:
      - ls /lib/games/steam/
