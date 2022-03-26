
execute unless entity @p[team=desert,tag=d6] as @a[team=desert,tag=!d1,tag=!d2,tag=!d3,tag=!d4,tag=!d5] if score @s DesertKills = #temp desertplace run tag @s add d6
execute as @a[team=desert,tag=d6] run scoreboard players add #temp deserttag 1
execute if score #temp deserttag matches 2.. run tag @r[team=desert,tag=d6] add d6a
execute if score #temp deserttag matches 2.. run tag @a[team=desert,tag=!d6a] remove d6
tag @a[team=desert] remove d6a
scoreboard players set #temp deserttag 0
scoreboard players remove #temp desertplace 1
execute if score #temp desertplace matches 0.. run function custom:maps/desert/place/6