
execute unless entity @p[team=lostcity,tag=l3] as @a[team=lostcity,tag=!l1,tag=!l2] if score @s LostcityKills = #temp lostcityplace run tag @s add l3
execute as @a[team=lostcity,tag=l3] run scoreboard players add #temp lostcitytag 1
execute if score #temp lostcitytag matches 2.. run tag @r[team=lostcity,tag=l3] add l3a
execute if score #temp lostcitytag matches 2.. run tag @a[team=lostcity,tag=!l3a] remove l3
tag @a[team=lostcity] remove l3a
scoreboard players set #temp lostcitytag 0
scoreboard players remove #temp lostcityplace 1
execute if score #temp lostcityplace matches 0.. run function custom:maps/lostcity/place/3