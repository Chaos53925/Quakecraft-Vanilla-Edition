
execute unless entity @p[team=desert,tag=d9] as @a[team=desert,tag=!d1,tag=!d2,tag=!d3,tag=!d4,tag=!d5,tag=!d6,tag=!d7,tag=!d8] if score @s DesertKills = #temp desertplace run tag @s add d9
execute as @a[team=desert,tag=d9] run scoreboard players add #temp deserttag 1
execute if score #temp deserttag matches 2.. run tag @r[team=desert,tag=d9] add d9a
execute if score #temp deserttag matches 2.. run tag @a[team=desert,tag=!d9a] remove d9
tag @a[team=desert] remove d9a
scoreboard players set #temp deserttag 0
scoreboard players remove #temp desertplace 1
execute if score #temp desertplace matches 0.. run function maps:desert/place/9