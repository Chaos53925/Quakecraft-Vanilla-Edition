
execute unless entity @p[team=desert,tag=d3] as @a[team=desert,tag=!d1,tag=!d2] if score @s DSesertKills = #temp desertplace run tag @s add d3
execute as @a[team=desert,tag=d3] run scoreboard players add #temp deserttag 1
execute if score #temp deserttag matches 2.. run tag @r[team=desert,tag=d3] add d3a
execute if score #temp deserttag matches 2.. run tag @a[team=desert,tag=!d3a] remove d3
tag @a[team=desert] remove d3a
scoreboard players set #temp deserttag 0
scoreboard players remove #temp desertplace 1
execute if score #temp desertplace matches 0.. run function custom:maps/desert/place/3