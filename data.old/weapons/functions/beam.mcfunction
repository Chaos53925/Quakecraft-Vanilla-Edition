# distanz
scoreboard players operation @s da = @s distance
scoreboard players operation @s db = @s distance
scoreboard players operation @s da /= #db db
scoreboard players operation @s db %= #db db
scoreboard players set @s[scores={db=0}] dd 0
scoreboard players set @s[scores={db=1}] dd 25
scoreboard players set @s[scores={db=2}] dd 50
scoreboard players set @s[scores={db=3}] dd 75
# Killnachricht
execute unless score @s uID = @e[distance=0,limit=1,type=!armor_stand] uID run tellraw @a[distance=..150,team=!Lobby] [{"selector":"@s","color":"blue"},{"text":" >>> ","color":"gold"},{"selector":"@e[distance=0,limit=1]","color":"dark_blue"}]
execute unless score @s uID = @e[distance=0,limit=1,type=!armor_stand,tag=headshot] uID run function guns:beam/headshot
execute unless score @s uID = @e[distance=0,limit=1,type=!armor_stand] uID run function guns:beam/kill
# distanz reset
scoreboard players reset @s da
scoreboard players reset @s dd
# Kills und Coins eintagen
execute unless score @s uID = @e[distance=0,limit=1,type=!armor_stand] uID run function guns:beam/scores
# Todessounds
execute unless score @s uID = @e[distance=0,limit=1,type=!armor_stand] uID run function guns:beam/deathsound
# Killeffekte
execute unless score @s uID = @e[distance=0,limit=1,type=!armor_stand] uID run function guns:beam/killeffect
# Getroffenen Gegner schaden oder killen
execute unless score @s uID = @e[distance=0,limit=1,type=!armor_stand,scores={hp=1..}] uID run function guns:damage
execute unless score @s uID = @e[distance=0,limit=1,type=!armor_stand,scores={hp=..0}] uID run tag @e[distance=0,limit=1,type=!armor_stand] add die
execute unless score @s uID = @e[distance=0,limit=1,type=!armor_stand,tag=die] uID run tp @e[distance=0,limit=1,type=!armor_stand] ~ 150 ~
execute unless score @s uID = @e[distance=0,limit=1,type=!armor_stand,tag=die] uID run tag @e[distance=0,limit=1,type=!armor_stand] add immune
execute as @e[distance=0,limit=1,type=!armor_stand,tag=die] run scoreboard players operation @s immunity = @s immune
execute unless score @s uID = @e[distance=0,limit=1,type=!armor_stand] uID run tag @e[distance=0,limit=1,type=!armor_stand] remove hit
