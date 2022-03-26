
bossbar set minecraft:lostcityprogress players @a[team=lostcity]
scoreboard players set #lostcityprogress temp 0
execute as @a[team=lostcity] run scoreboard players operation #lostcityprogress temp > @s LostcityKills
execute store result bossbar minecraft:lostcityprogress value run scoreboard players get #lostcityprogress temp
bossbar set lostcityprogress name [{"text":"Lostcity ","color":"gray"},{"translate":"main.actionbar.kills","color":"yellow"},{"score":{"name":"#lostcityprogress","objective":"temp"},"color":"blue"},{"text":"/","color":"yellow"},{"text":"30","color":"blue"}]

scoreboard objectives setdisplay sidebar.team.gray LostcityKills

execute as @a[team=lostcity] run function custom:maps/invgame

execute if entity @p[team=lostcity,scores={LostcityKills=30..}] run function custom:maps/lostcity/winner

scoreboard players set #lostcity lostcitylobby 0
execute as @a[team=lostcity] run scoreboard players add #lostcity lostcitylobby 1
execute if score #lostcity lostcitylobby matches ..1 run function custom:maps/lostcity/cancel


#effekte in-game
effect give @a[team=lostcity] speed 1 1 true
effect give @a[team=lostcity] jump_boost 1 0 true

#respawn functions
function custom:maps/lostcity/spawn


execute as @a[team=lostcity] run function custom:reload/reload

#endfunktion
execute at @a[tag=l1,team=lostcity] run function custom:maps/lostcity/end