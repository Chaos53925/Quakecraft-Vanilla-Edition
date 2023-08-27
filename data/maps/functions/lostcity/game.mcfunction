
bossbar set minecraft:lostcityprogress players @a[team=lostcity]
scoreboard players set #lostcityprogress temp 0
execute as @a[team=lostcity] run scoreboard players operation #lostcityprogress temp > @s LostcityKills
execute store result bossbar minecraft:lostcityprogress value run scoreboard players get #lostcityprogress temp
bossbar set lostcityprogress name [{"translate":"main.progressbar","color":"yellow","with":[{"text":"Lostcity","color":"grey"},{"score":{"name":"#lostcityprogress","objective":"temp"},"color":"blue"},{"text":"30","color":"blue"}]}]

scoreboard objectives setdisplay sidebar.team.gray LostcityKills

execute as @a[team=lostcity] run function maps:invgame

execute if entity @p[team=lostcity,scores={LostcityKills=30..},limit=1] run function maps:lostcity/winner

scoreboard players set #lostcity lostcitylobby 0
execute as @a[team=lostcity] run scoreboard players add #lostcity lostcitylobby 1
execute if score #lostcity lostcitylobby matches ..1 run function maps:lostcity/cancel


#effekte in-game
effect give @a[team=lostcity] speed 1 1 true
effect give @a[team=lostcity] jump_boost 1 0 true

#respawn functions
function maps:lostcity/spawn


execute as @a[team=lostcity] run function guns:reload/reload

#endfunktion
execute at @a[tag=l1,team=lostcity] run function maps:lostcity/end