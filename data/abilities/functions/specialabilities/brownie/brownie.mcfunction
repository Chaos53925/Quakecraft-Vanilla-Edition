tag @s add brst
execute as @s[team=apex] run tag @r[team=apex,tag=!brst] add brdie
execute as @s[team=candy] run tag @r[team=candy,tag=!brst] add brdie
execute as @s[team=desert] run tag @r[team=desert,tag=!brst] add brdie
execute as @s[team=lostcity] run tag @r[team=lostcity,tag=!brst] add brdie
scoreboard players add @s[team=apex] ApexKills 1
scoreboard players add @s[team=desert] DesertKills 1
scoreboard players add @s[team=candy] CandyKills 1
scoreboard players add @s[team=lostcity] LostcityKills 1
scoreboard players add @s Kills 1
scoreboard players add @s Coins 5
scoreboard players add @s Coin 5
scoreboard players add @s kstreak 1
tellraw @a[distance=..150,team=!Lobby] {"selector":"@s","color":"blue","extra":[{"text":" >>> ","color":"gold"},{"selector":"@e[tag=brdie,limit=1]","color":"dark_blue"}]}
tellraw @s [{"text":"Brownie-Style: ","color":"gold"},{"text":"+","color":"yellow"},{"text":" 5 ","color":"red"},{"text":"Coins","color":"gold"}]
tp @s @p[tag=brdie]
kill @a[tag=brdie]
tag @a[tag=brdie] remove brdie
execute at @s run particle minecraft:large_smoke ~ ~ ~ 0.1 0.1 0.1 0.1 500 force
scoreboard players set @s brst 0
scoreboard players set @s effecttimer 0
scoreboard players set @s effectsek 120
scoreboard players set @s railguntimer 0
scoreboard players set @s shotguntimer 0
scoreboard players set @s book 0
tag @s remove ding
