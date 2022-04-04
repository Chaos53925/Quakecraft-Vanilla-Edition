
team join desert @s
tag @s add game
tag @s add start
tag @s remove play
scoreboard players set #desert desertlobby 0
execute as @a[team=desert] run scoreboard players add #desert desertlobby 1
tellraw @a[team=desert] [{"selector":"@s","color":"gold"},{"translate":"map.join.inmap","color":"yellow"},{"score":{"name":"#desert","objective":"desertlobby"},"color":"aqua"},{"text":"/","color":"yellow"},{"text":"10","color":"aqua"},{"text":")","color":"yellow"}]

tellraw @a[team=Lobby] [{"selector":"@s","color":"gold"},{"translate":"map.join.desert.inlobby","color":"yellow"},{"score":{"name":"#desert","objective":"desertlobby"},"color":"aqua"},{"text":"/","color":"yellow"},{"text":"10","color":"aqua"},{"text":")","color":"yellow"}]

scoreboard players remove @s Tode 1
bossbar set minecraft:playerbar players
tp @s -178 44.3 343 0.0 0.0
spawnpoint @s -178 45 343 0.0
clear @s
item replace entity @a[team=desert] hotbar.8 with minecraft:knowledge_book{Recipes: ["minecraft:book"], display: {Name: '{"translate":"map.before.leave","color":"dark_red"}'}}
scoreboard players set @s desertjoin 0
kill @s
execute at @s run playsound minecraft:block.note_block.pling master @s[tag=!soundsoff] ~ ~ ~ 0.5 2
