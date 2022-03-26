
execute unless entity @p[team=desert,tag=d5] as @a[team=desert,tag=!d1,tag=!d2,tag=!d3,tag=!d4] if score @s DesertKills = #temp desertplace run tag @s add d5
execute as @a[team=desert,tag=d5] run scoreboard players add #temp deserttag 1
execute if score #temp deserttag matches 2.. run tag @r[team=desert,tag=d5] add d5a
execute if score #temp deserttag matches 2.. run tag @a[team=desert,tag=!d5a] remove d5
tag @a remove d5a
scoreboard players set #temp deserttag 0
scoreboard players remove #temp desertplace 1
execute if score #temp desertplace matches 0.. run function custom:maps/desert/place/5