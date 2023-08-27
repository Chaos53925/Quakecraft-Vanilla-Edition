
bossbar set minecraft:desertprogress players @a[team=desert]
scoreboard players set #desertprogress temp 0
execute as @a[team=desert] run scoreboard players operation #desertprogress temp > @s DesertKills
execute store result bossbar minecraft:desertprogress value run scoreboard players get #desertprogress temp
bossbar set desertprogress name [{"translate":"main.progressbar","color":"yellow","with":[{"text":"Desert ","color":"gold"},{"score":{"name":"#desertprogress","objective":"temp"},"color":"blue"},{"text":"30","color":"blue"}]}]

scoreboard objectives setdisplay sidebar.team.gold DesertKills

execute as @a[team=desert] run function maps:invgame

execute if entity @p[team=desert,scores={DesertKills=30..}] run function maps:desert/winner

scoreboard players set #desert desertlobby 0
execute as @a[team=desert] run scoreboard players add #desert desertlobby 1
execute if score #desert desertlobby matches ..1 run function maps:desert/cancel

#effekte in-game
effect give @a[team=desert] speed 1 1 true
effect give @a[team=desert] jump_boost 1 0 true

#respawn functions
function maps:desert/spawn

execute as @a[team=desert] run function guns:reload/reload

#endfunktion
execute at @p[tag=d1,team=desert] run function maps:desert/end