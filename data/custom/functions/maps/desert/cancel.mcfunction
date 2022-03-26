
tellraw @a[team=desert] [{"translate":"map.end.cancel.playergo","color":"red"}]

execute as @a[team=desert] run tellraw @s [{"translate":"map.end.cancel.get","color":"yellow"},{"score":{"name":"@s","objective":"Coin"},"color":"red"},{"text":" Coins","color":"gold"},{"text":".","color":"blue"},{"text":".","color":"yellow"}]

scoreboard players set #desert desertvote 0

scoreboard players set #desertquick game 0
scoreboard players set @a[team=desert] Coin 0
scoreboard players reset * DesertKills
scoreboard players reset @a[team=desert] dID
scoreboard players set #desert game 0
scoreboard players set #desertsek game 0
scoreboard players set #desertmin game 0
scoreboard players set #desertgame game 0
scoreboard players reset @a[team=desert] DesertTode
tag @a[team=desert] remove desertvote
clear @a[team=desert]
tag @a[team=desert] remove play
tag @a[team=desert] add alwaysShoot
tp @a[team=desert] 10 17 146
execute as @a[team=desert] run function custom:shop/main/initmain
team join Lobby @a[team=desert]
bossbar set minecraft:desertprogress players
