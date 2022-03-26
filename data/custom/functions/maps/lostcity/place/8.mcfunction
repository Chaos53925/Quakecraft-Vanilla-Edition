
execute unless entity @p[team=lostcity,tag=l8] as @a[team=lostcity,tag=!l1,tag=!l2,tag=!l3,tag=!l4,tag=!l5,tag=!l6,tag=!l7] if score @s LostcityKills = #temp lostcityplace run tag @s add l8
execute as @a[team=lostcity,tag=l8] run scoreboard players add #temp lostcitytag 1
execute if score #temp lostcitytag matches 2.. run tag @r[team=lostcity,tag=l8] add l8a
execute if score #temp lostcitytag matches 2.. run tag @a[team=lostcity,tag=!l8a] remove l8
tag @a[team=lostcity] remove l8a
scoreboard players set #temp lostcitytag 0
scoreboard players remove #temp lostcityplace 1
execute if score #temp lostcityplace matches 0.. run function custom:maps/lostcity/place/8