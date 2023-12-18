
$team join $(team) @s
tag @s add game
tag @s add start
tag @s remove play
$scoreboard players set $(teamlobby) data 0
$execute as @a[team=$(team)] run scoreboard players add $(teamlobby) data 1

#Join Nachricht Map
$tellraw @a[team=$(team)] [{"translate":"map.join.inmap","color":"yellow","with":[{"selector":"@s","color":"$(teamcolor)"},{"score":{"name":"$(teamlobby)","objective":"data"},"color":"aqua"},{"text":"10","color":"aqua"}]}]
# Join Nachricht Lobby
$tellraw @a[team=Lobby] [{"translate":"map.join.inlobby","color":"yellow","with":[{"selector":"@s","color":"$(teamcolor)"},{"text":"$(mapname)","color":"red"},{"score":{"name":"$(teamlobby)","objective":"data"},"color":"aqua"},{"text":"10","color":"aqua"}]}]

scoreboard players remove @s Tode 1
bossbar set minecraft:playerbar players
$tp @s $(tpcoords)
$spawnpoint @s $(spawncoords)
clear @s
$item replace entity @a[team=$(team)] hotbar.8 with minecraft:knowledge_book{Recipes: ["minecraft:book"], display: {Name: '{"translate":"map.before.leave","color":"dark_red"}'}}
$scoreboard players set @s $(jointrigger) 0
kill @s
execute at @s run playsound minecraft:block.note_block.pling master @s[tag=!soundsoff] ~ ~ ~ 0.5 2
