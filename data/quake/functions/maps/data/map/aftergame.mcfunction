$execute as @a[team=$(team)] run function quake:maps/data/work/invend
$scoreboard players add $(endname) data 1
$execute if score $(endname) game matches 60.. run function quake:maps/data/map/back with storage quake:$(team)