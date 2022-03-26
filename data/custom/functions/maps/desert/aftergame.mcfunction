execute as @a[team=desert] run function custom:maps/invend
scoreboard players add #desertend game 1
execute if score #desertend game matches 60.. run function custom:maps/desert/back