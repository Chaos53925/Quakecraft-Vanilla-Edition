function quake:main/maps/functions/game with storage quake:apex

execute if score #apexgame game matches 0 run function quake:maps/data/beforethegame with storage quake:apex
execute if score #apexgame game matches 2 run function quake:maps/data/game with storage quake:apex
execute if score #apexgame game matches 1 run function quake:maps/data/start with storage quake:apex
execute if score #apexgame game matches 3 run function quake:maps/data/aftergame with storage quake:apex

execute if score #candygame game matches 0 run function quake:maps/data/beforethegame with storage quake:candy
execute if score #candygame game matches 2 run function quake:maps/data/game with storage quake:candy
execute if score #candygame game matches 1 run function quake:maps/data/start with storage quake:candy
execute if score #candygame game matches 3 run function quake:maps/data/aftergame with storage quake:candy

execute if score #desertgame game matches 0 run function quake:maps/data/beforethegame with storage quake:desert
execute if score #desertgame game matches 2 run function quake:maps/data/game with storage quake:desert
execute if score #desertgame game matches 1 run function quake:maps/data/start with storage quake:desert
execute if score #desertgame game matches 3 run function quake:maps/data/aftergame with storage quake:desert

execute if score #lostcitygame game matches 0 run function quake:maps/data/beforethegame with storage quake:lostcity
execute if score #lostcitygame game matches 2 run function quake:maps/data/game with storage quake:lostcity
execute if score #lostcitygame game matches 1 run function quake:maps/data/start with storage quake:lostcity
execute if score #lostcitygame game matches 3 run function quake:maps/data/aftergame with storage quake:lostcity