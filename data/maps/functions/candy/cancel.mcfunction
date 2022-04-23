
tellraw @a[team=candy] [{"translate":"map.end.cancel.playergo","color":"red"}]

execute as @a[team=candy] run tellraw @s [{"translate":"map.end.cancel.get","color":"yellow"},{"score":{"name":"@s","objective":"Coin"},"color":"red"},{"text":" Coins","color":"gold"},{"text":".","color":"blue"},{"text":".","color":"yellow"}]

scoreboard players set #candy candyvote 0

scoreboard players set #candyquick game 0
scoreboard players set @a[team=candy] Coin 0
scoreboard players reset * CandyKills
scoreboard players reset @a[team=candy] uID
scoreboard players set #candy game 0
scoreboard players set #candysek game 0
scoreboard players set #candymin game 0
scoreboard players set #candygame game 0
scoreboard players reset @a[team=candy] CandyTode
tag @a[team=candy] remove candyvote
clear @a[team=candy]
tag @a[team=candy] remove play
tag @a[team=candy] remove game
tag @a[team=candy] add alwaysShoot
tp @a[team=candy] 10 17 146
execute as @a[team=candy] run function shop:main/initmain
team join Lobby @a[team=candy]
bossbar set minecraft:candyprogress players
