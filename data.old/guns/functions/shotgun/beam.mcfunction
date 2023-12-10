
# Killnachricht
execute unless score @s uID = @e[distance=0,limit=1,type=!armor_stand] uID run tellraw @a[distance=..150,team=!Lobby] [{"selector":"@s","color":"blue"},{"text":" >>> ","color":"gold"},{"selector":"@e[distance=0,limit=1]","color":"dark_blue"}]
# Kills und Coins eintagen
execute unless score @s uID = @e[distance=0,limit=1,type=!armor_stand] uID run function guns:beam/scores
# Todessounds
execute unless score @s uID = @e[distance=0,limit=1,type=!armor_stand] uID run function guns:beam/deathsound
# Killeffekte
execute unless score @s uID = @e[distance=0,limit=1,type=!armor_stand] uID run function guns:beam/killeffect
# Getroffenen Gegner killen
execute unless score @s uID = @e[distance=0,limit=1] uID run tag @e[distance=0,limit=1,type=!armor_stand] add die
execute unless score @s uID = @e[distance=0,limit=1] uID run tp @e[distance=0,limit=1,type=!armor_stand] ~ -50 ~
