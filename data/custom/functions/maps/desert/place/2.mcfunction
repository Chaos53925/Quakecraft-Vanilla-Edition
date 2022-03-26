
execute unless entity @p[team=desert,tag=d2] as @a[team=desert,tag=!d1] if score @s DesertKills = #temp desertplace run tag @s add d2
execute as @a[team=desert,tag=d2] run scoreboard players add #temp deserttag 1
execute if score #temp deserttag matches 2.. run tag @r[team=desert,tag=d2] add d2a
execute if score #temp deserttag matches 2.. run tag @a[team=desert,tag=!d2a] remove d2
tag @a[team=desert] remove d2a
scoreboard players set #temp deserttag 0
scoreboard players remove #temp desertplace 1
execute if score #temp desertplace matches 0.. run function custom:maps/desert/place/2