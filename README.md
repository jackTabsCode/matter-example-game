Fork of Matter's example game with some changes made.

To build, run the following commands:
```nu
aftman install
wally install
rojo sourcemap -o sourcemap.json
wally-package-types Packages/ --sourcemap sourcemap.json
rojo build -o game.rbxl
```