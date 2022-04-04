execute as @a[team=candy] run function maps:invend
scoreboard players add #candyend game 1
execute if score #candyend game matches 60.. run function maps:candy/back