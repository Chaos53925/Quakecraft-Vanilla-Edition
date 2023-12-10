scoreboard players set @s book 0
execute if entity @s[team=apex] run tellraw @a[team=apex] [{"translate":"join.leave.map","color":"yellow","with":[{"selector":"@s","color":"red"}]}]
execute if entity @s[team=candy] run tellraw @a[team=candy] [{"translate":"join.leave.map","color":"yellow","with":[{"selector":"@s","color":"aqua"}]}]
execute if entity @s[team=desert] run tellraw @a[team=desert] [{"translate":"join.leave.map","color":"yellow","with":[{"selector":"@s","color":"gold"}]}]
execute if entity @s[team=lostcity] run tellraw @a[team=lostcity] [{"translate":"join.leave.map","color":"yellow","with":[{"selector":"@s","color":"gray"}]}]

execute at @s[team=Lobby] run particle minecraft:large_smoke ~ ~ ~ 0.1 0.1 0.1 0.1 50 force

tag @s remove apexvote
tag @s remove desertvote
tag @s remove candyvote
tag @s remove lostcityvote
tag @s remove start
tag @s remove end

tellraw @s[team=Lobby] {"translate":"join.leave.spawn","color":"yellow"}

scoreboard players reset @s apexvoting
scoreboard players reset @s candyvoting
scoreboard players reset @s desertvoting
scoreboard players reset @s lostcityvoting

scoreboard players set #lostcity lostcityvote 0
execute as @a[team=lostcity,tag=lostcityvote] run scoreboard players add #lostcity lostcityvote 1
scoreboard players set #desert desertvote 0
execute as @a[team=desert,tag=desertvote] run scoreboard players add #desert desertvote 1
scoreboard players set #candy candyvote 0
execute as @a[team=candy,tag=candyvote] run scoreboard players add #candy candyvote 1
scoreboard players set #apex apexvote 0
execute as @a[team=apex,tag=apexvote] run scoreboard players add #apex apexvote 1

spawnpoint @s 10 17 146
tp @s 10 17 146 -90 0
tag @s remove game
clear @s
execute as @s run function shop:main/initmain
playsound minecraft:block.note_block.pling master @s[tag=!soundsoff,team=!Lobby] ~ ~ ~ 0.5 2
team join Lobby @s
