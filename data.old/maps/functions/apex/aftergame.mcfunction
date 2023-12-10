execute as @a[team=apex] run function maps:invend
scoreboard players add #apexend game 1
execute if score #apexend game matches 60.. run function maps:apex/back