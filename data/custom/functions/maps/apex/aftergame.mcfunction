execute as @a[team=apex] run function custom:maps/invend
scoreboard players add #apexend game 1
execute if score #apexend game matches 60.. run function custom:maps/apex/back