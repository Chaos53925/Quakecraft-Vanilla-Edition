$execute as @a[team=$(team)] run function maps:invend
$scoreboard players add $(endname) data 1
$execute if score $(endname) game matches 60.. run function maps:map/back with storage quake:$(team)