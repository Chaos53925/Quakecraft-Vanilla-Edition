
execute unless entity @p[team=desert,tag=d7] as @a[team=desert,tag=!d1,tag=!d2,tag=!d3,tag=!d4,tag=!d5,tag=!d6] if score @s DesertKills = #temp desertplace run tag @s add d7
execute as @a[team=desert,tag=d7] run scoreboard players add #temp deserttag 1
execute if score #temp deserttag matches 2.. run tag @r[team=desert,tag=d7] add d7a
execute if score #temp deserttag matches 2.. run tag @a[team=desert,tag=!d7a] remove d7
tag @a[team=desert] remove d7a
scoreboard players set #temp deserttag 0
scoreboard players remove #temp desertplace 1
execute if score #temp desertplace matches 0.. run function custom:maps/desert/place/7