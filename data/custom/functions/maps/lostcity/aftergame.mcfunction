execute as @a[team=lostcity] run function custom:maps/invend
scoreboard players add #lostcityend game 1
execute if score #lostcityend game matches 60.. run function custom:maps/lostcity/back