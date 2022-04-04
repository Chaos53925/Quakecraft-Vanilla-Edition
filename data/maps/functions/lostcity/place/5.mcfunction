
execute unless entity @p[team=lostcity,tag=l5] as @a[team=lostcity,tag=!l1,tag=!l2,tag=!l3,tag=!l4] if score @s LostcityKills = #temp lostcityplace run tag @s add l5
execute as @a[team=lostcity,tag=l5] run scoreboard players add #temp lostcitytag 1
execute if score #temp lostcitytag matches 2.. run tag @r[team=lostcity,tag=l5] add l5a
execute if score #temp lostcitytag matches 2.. run tag @a[team=lostcity,tag=!l5a] remove l5
tag @a[team=lostcity] remove l5a
scoreboard players set #temp lostcitytag 0
scoreboard players remove #temp lostcityplace 1
execute if score #temp lostcityplace matches 0.. run function maps:lostcity/place/5