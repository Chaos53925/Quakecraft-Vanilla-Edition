
execute unless entity @p[team=lostcity,tag=l4] as @a[team=lostcity,tag=!l1,tag=!l2,tag=!l3] if score @s LostcityKills = #temp lostcityplace run tag @s add l4
execute as @a[team=lostcity,tag=l4] run scoreboard players add #temp lostcitytag 1
execute if score #temp lostcitytag matches 2.. run tag @r[team=lostcity,tag=l4] add l4a
execute if score #temp lostcitytag matches 2.. run tag @a[team=lostcity,tag=!l4a] remove l4
tag @a[team=lostcity] remove l4a
scoreboard players set #temp lostcitytag 0
scoreboard players remove #temp lostcityplace 1
execute if score #temp lostcityplace matches 0.. run function maps:lostcity/place/4