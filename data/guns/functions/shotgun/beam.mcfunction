
#Killnachricht
execute unless score @s uID = @e[distance=0,limit=1,type=!armor_stand] uID run tellraw @a[distance=..150,team=!Lobby] [{"selector":"@s","color":"blue"},{"text":" >>> ","color":"gold"},{"selector":"@e[distance=0,limit=1]","color":"dark_blue"}]
#Kills und Coins eintagen
execute unless score @s uID = @e[distance=0,limit=1,type=!armor_stand] uID run function guns:beam/scores
#Todessounds
execute unless score @s uID = @e[distance=0,limit=1,type=!armor_stand] uID run function guns:beam/deathsound
#Killeffekte
execute unless score @s uID = @e[distance=0,limit=1,type=!armor_stand] uID run function guns:beam/killeffect
#Instant Karma Spezialfähigkeit
execute unless score @s uID = @e[distance=0,limit=1,type=!armor_stand,tag=karma] uID run function guns:beam/karma
tellraw @s [{"text": "Coins","color": "gold"},{"text": ": +","color": "yellow"},{"score":{"name":"@s","objective":"gCoin"}}]
execute unless score @s uID = @e[distance=0,limit=1,type=!armor_stand,tag=karma] uID run scoreboard players set @s shotgun 17
#Getroffenen Gegner killen
execute unless score @s uID = @e[distance=0,limit=1] uID run tag @e[distance=0,limit=1,type=!armor_stand] add die
execute unless score @s uID = @e[distance=0,limit=1] uID run tp @e[distance=0,limit=1,type=!armor_stand] ~ -50 ~
