
team join candy @s
tag @s add game
tag @s add start
tag @s remove play
scoreboard players set #candy candylobby 0
execute as @a[team=candy] run scoreboard players add #candy candylobby 1
tellraw @a[team=candy] [{"selector":"@s","color":"aqua"},{"translate":"map.join.inmap","color":"yellow"},{"score":{"name":"#candy","objective":"candylobby"},"color":"aqua"},{"text":"/","color":"yellow"},{"text":"10","color":"aqua"},{"text":")","color":"yellow"}]

tellraw @a[team=Lobby] [{"selector":"@s","color":"aqua"},{"translate":"map.join.candy.inlobby","color":"yellow"},{"score":{"name":"#candy","objective":"candylobby"},"color":"aqua"},{"text":"/","color":"yellow"},{"text":"10","color":"aqua"},{"text":")","color":"yellow"}]

bossbar set minecraft:playerbar players
tp @s -708 35.3 372 0.0 0.0
spawnpoint @s -708 36 372 0.0
clear @s
item replace entity @a[team=candy] hotbar.8 with minecraft:knowledge_book{Recipes: ["minecraft:book"], display: {Name: '{"translate":"map.before.leave","color":"dark_red"}'}}
scoreboard players set @s candyjoin 0
kill @s
