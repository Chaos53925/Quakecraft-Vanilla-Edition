execute as @a[team=candy] run function custom:maps/invend
scoreboard players add #candyend game 1
execute if score #candyend game matches 60.. run function custom:maps/candy/back