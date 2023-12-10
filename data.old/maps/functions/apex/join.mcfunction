
team join apex @s
tag @s add game
tag @s add start
tag @s remove play
scoreboard players set #apex apexlobby 0
execute as @a[team=apex] run scoreboard players add #apex apexlobby 1
tellraw @a[team=apex] [{"translate":"map.join.inmap","color":"yellow","with":[{"selector":"@s","color":"red"},{"score":{"name":"#apex","objective":"apexlobby"},"color":"aqua"},{"text":"10","color":"aqua"}]}]

tellraw @a[team=Lobby] [{"translate":"map.join.inlobby","color":"yellow","with":[{"selector":"@s","color":"red"},{"text":"Apex","color":"red"},{"score":{"name":"#apex","objective":"apexlobby"},"color":"aqua"},{"text":"10","color":"aqua"}]}]

scoreboard players remove @s Tode 1
bossbar set minecraft:playerbar players
tp @s -1384 42.3 246 180.0 0.0
spawnpoint @s -1384 43 246 180.0
clear @s
item replace entity @a[team=apex] hotbar.8 with minecraft:knowledge_book{Recipes: ["minecraft:book"], display: {Name: '{"translate":"map.before.leave","color":"dark_red"}'}}
scoreboard players set @s apexjoin 0
kill @s
execute at @s run playsound minecraft:block.note_block.pling master @s[tag=!soundsoff] ~ ~ ~ 0.5 2
