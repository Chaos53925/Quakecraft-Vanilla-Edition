
team join candy @s
tag @s add game
tag @s add start
tag @s remove play
scoreboard players set #candy candylobby 0
execute as @a[team=candy] run scoreboard players add #candy candylobby 1
tellraw @a[team=candy] [{"translate":"map.join.inmap","color":"yellow","with":[{"selector":"@s","color":"red"},{"score":{"name":"#candy","objective":"candylobby"},"color":"aqua"},{"text":"10","color":"aqua"}]}]

tellraw @a[team=Lobby] [{"translate":"map.join.inlobby","color":"yellow","with":[{"selector":"@s","color":"aqua"},{"text":"Candy","color":"aqua"},{"score":{"name":"#candy","objective":"candylobby"},"color":"aqua"},{"text":"10","color":"aqua"}]}]

scoreboard players remove @s Tode 1
bossbar set minecraft:playerbar players
tp @s -708 35.3 372 0.0 0.0
spawnpoint @s -708 36 372 0.0
clear @s
item replace entity @a[team=candy] hotbar.8 with minecraft:knowledge_book{Recipes: ["minecraft:book"], display: {Name: '{"translate":"map.before.leave","color":"dark_red"}'}}
scoreboard players set @s candyjoin 0
kill @s

execute at @s run playsound minecraft:block.note_block.pling master @s[tag=!soundsoff] ~ ~ ~ 0.5 2
