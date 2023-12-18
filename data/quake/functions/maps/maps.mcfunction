$execute if score $(mapdata) data matches 0 run function quake:main/maps/functions/beforethegame with storage quake:$(team)
$execute if score $(mapdata) data matches 1 run function quake:main/maps/functions/start with storage quake:$(team)
$execute if score $(mapdata) data matches 2 run function quake:main/maps/functions/game with storage quake:$(team)
$execute if score $(mapdata) data matches 3 run function quake:main/maps/functions/aftergame with storage quake:$(team)