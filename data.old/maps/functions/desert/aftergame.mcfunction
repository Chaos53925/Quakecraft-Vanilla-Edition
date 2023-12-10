execute as @a[team=desert] run function maps:invend
scoreboard players add #desertend game 1
execute if score #desertend game matches 60.. run function maps:desert/back