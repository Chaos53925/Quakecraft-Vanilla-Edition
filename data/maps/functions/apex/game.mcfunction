
bossbar set minecraft:apexprogress players @a[team=apex]
scoreboard players set #apexprogress temp 0
execute as @a[team=apex] run scoreboard players operation #apexprogress temp > @s ApexKills
execute store result bossbar minecraft:apexprogress value run scoreboard players get #apexprogress temp
bossbar set apexprogress name [{"translate":"main.progressbar","color":"yellow","with":[{"text":"Desert ","color":"gold"},{"score":{"name":"#apexprogress","objective":"temp"},"color":"blue"},{"text":"30","color":"blue"}]}]

scoreboard objectives setdisplay sidebar.team.red ApexKills 

execute as @a[team=apex] run function maps:invgame

execute if entity @p[team=apex,scores={ApexKills=30..}] run function maps:apex/winner

scoreboard players set #apex apexlobby 0
execute as @a[team=apex] run scoreboard players add #apex apexlobby 1
execute if score #apex apexlobby matches ..1 run function maps:apex/cancel
#effekte in-game
effect give @a[team=apex] speed 1 1 true
effect give @a[team=apex] jump_boost 1 0 true

#respawn function
function maps:apex/spawn

execute as @a[team=apex] run function guns:reload/reload

#endfunktion
execute at @p[tag=a1,team=apex] run function maps:apex/end
