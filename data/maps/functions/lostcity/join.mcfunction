
team join lostcity @s
scoreboard players set #lostcity lostcitylobby 0
execute as @a[team=lostcity] run scoreboard players add #lostcity lostcitylobby 1
tellraw @a[team=lostcity] [{"selector":"@s","color":"gray"},{"translate":"map.join.inmap","color":"yellow"},{"score":{"name":"#lostcity","objective":"lostcitylobby"},"color":"aqua"},{"text":"/","color":"yellow"},{"text":"10","color":"aqua"},{"text":")","color":"yellow"}]

tellraw @a[team=Lobby] [{"selector":"@s","color":"gray"},{"translate":"map.join.lostcity.inlobby","color":"yellow"},{"score":{"name":"#lostcity","objective":"lostcitylobby"},"color":"aqua"},{"text":"/","color":"yellow"},{"text":"10","color":"aqua"},{"text":")","color":"yellow"}]

scoreboard players remove @s Tode 1
bossbar set minecraft:playerbar players
tp @s 352 47.3 325 0.0 0.0
spawnpoint @s 352 48 325 0.0
clear @s
tag @s add game
tag @s add start
tag @s remove play
item replace entity @a[team=lostcity] hotbar.8 with minecraft:knowledge_book{Recipes: ["minecraft:book"], display: {Name: '{"translate":"map.before.leave","color":"dark_red"}'}}
scoreboard players set @s lostcityjoin 0
kill @s

execute at @s run playsound minecraft:block.note_block.pling master @s[tag=!soundsoff] ~ ~ ~ 0.5 2