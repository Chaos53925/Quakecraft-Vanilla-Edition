
execute unless entity @p[team=lostcity,tag=l6] as @a[team=lostcity,tag=!l1,tag=!l2,tag=!l3,tag=!l4,tag=!l5] if score @s LostcityKills = #temp lostcityplace run tag @s add l6
execute as @a[team=lostcity,tag=l6] run scoreboard players add #temp lostcitytag 1
execute if score #temp lostcitytag matches 2.. run tag @r[team=lostcity,tag=l6] add l6a
execute if score #temp lostcitytag matches 2.. run tag @a[team=lostcity,tag=!l6a] remove l6
tag @a[team=lostcity] remove l6a
scoreboard players set #temp lostcitytag 0
scoreboard players remove #temp lostcityplace 1
execute if score #temp lostcityplace matches 0.. run function maps:lostcity/place/6