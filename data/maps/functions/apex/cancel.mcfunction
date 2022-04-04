
tellraw @a[team=apex] [{"translate":"map.end.cancel.playergo","color":"red"}]

execute as @a[team=apex] run tellraw @s [{"translate":"map.end.cancel.get","color":"yellow"},{"score":{"name":"@s","objective":"Coin"},"color":"red"},{"text":" Coins","color":"gold"},{"text":".","color":"blue"},{"text":".","color":"yellow"}]

scoreboard players set #apex apexvote 0

scoreboard players set #apexquick game 0
scoreboard players set @a[team=apex] Coin 0
scoreboard players reset * ApexKills
scoreboard players reset @a[team=apex] uID
scoreboard players set #apex game 0
scoreboard players set #apexsek game 0
scoreboard players set #apexmin game 2
scoreboard players set #apexgame game 0
scoreboard players reset @a[team=apex] ApexTode
tag @a[team=apex] remove apexvote
clear @a[team=apex]
tag @a[team=apex] remove play
tag @a[team=apex] add alwaysShoot
tp @a[team=apex] 10 17 146
execute as @a[team=apex] run function shop:main/initmain
team join Lobby @a[team=apex]
bossbar set minecraft:apexprogress players
