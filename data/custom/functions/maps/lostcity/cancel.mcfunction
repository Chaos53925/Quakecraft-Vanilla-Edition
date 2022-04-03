
tellraw @a[team=lostcity] [{"translate":"map.end.cancel.playergo","color":"red"}]

execute as @a[team=lostcity] run tellraw @s [{"translate":"map.end.cancel.get","color":"yellow"},{"score":{"name":"@s","objective":"Coin"},"color":"red"},{"text":" Coins","color":"gold"},{"text":".","color":"blue"},{"text":".","color":"yellow"}]

scoreboard players set #lostcity lostcityvote 0

scoreboard players set #lostcityquick game 0
scoreboard players set @a[team=lostcity] Coin 0
scoreboard players reset * LostcityKills
scoreboard players reset @a[team=lostcity] uID
scoreboard players set #lostcity game 0
scoreboard players set #lostcitysek game 0
scoreboard players set #lostcitymin game 0
scoreboard players set #lostcitygame game 0
scoreboard players reset @a[team=lostcity] LostcityTode
tag @a[team=lostcity] remove lostcityvote
clear @a[team=lostcity]
tag @a[team=lostcity] remove play
tag @a[team=lostcity] add alwaysShoot
tp @a[team=lostcity] 10 17 146
execute as @a[team=lostcity] run function custom:shop/main/initmain
team join Lobby @a[team=lostcity]
bossbar set minecraft:lostcityprogress players
