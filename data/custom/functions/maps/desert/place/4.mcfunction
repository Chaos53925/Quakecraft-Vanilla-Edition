
execute unless entity @p[team=desert,tag=d4] as @a[team=desert,tag=!d1,tag=!d2,tag=!d3] if score @s DesertKills = #temp desertplace run tag @s add d4
execute as @a[team=desert,tag=d4] run scoreboard players add #temp deserttag 1
execute if score #temp deserttag matches 2.. run tag @r[team=desert,tag=d4] add d4a
execute if score #temp deserttag matches 2.. run tag @a[team=desert,tag=!d4a] remove d4
tag @a[team=desert] remove d4a
scoreboard players set #temp deserttag 0
scoreboard players remove #temp desertplace 1
execute if score #temp desertplace matches 0.. run function custom:maps/desert/place/4