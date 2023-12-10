scoreboard players set @s book 0
$execute if entity @s[team=$team] run tellraw @a[team=$(team)] [{"translate":"join.leave.map","color":"yellow","with":[{"selector":"@s","color":"$(color)"}]}]

execute at @s[team=Lobby] run particle minecraft:large_smoke ~ ~ ~ 0.1 0.1 0.1 0.1 50 force

$tag @s remove $(votetag)
tag @s remove start
tag @s remove end

tellraw @s[team=Lobby] {"translate":"join.leave.spawn","color":"yellow"}

$scoreboard players reset @s $(votescore)

$execute store result score $(votename) data if entity @a[tag=$(votetag)]

spawnpoint @s 10 17 146
tp @s 10 17 146 -90 0
tag @s remove game
clear @s
execute as @s run function shop:main/initmain
playsound minecraft:block.note_block.pling master @s[tag=!soundsoff,team=!Lobby] ~ ~ ~ 0.5 2
team join Lobby @s