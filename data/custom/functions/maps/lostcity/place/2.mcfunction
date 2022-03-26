
execute unless entity @p[team=lostcity,tag=l2] as @a[team=lostcity,tag=!l1] if score @s LostcityKills = #temp lostcityplace run tag @s add l2
execute as @a[team=lostcity,tag=l2] run scoreboard players add #temp lostcitytag 1
execute if score #temp lostcitytag matches 2.. run tag @r[team=lostcity,tag=l2] add l2a
execute if score #temp lostcitytag matches 2.. run tag @a[team=lostcity,tag=!l2a] remove l2
tag @a[team=lostcity] remove l2a
scoreboard players set #temp lostcitytag 0
scoreboard players remove #temp lostcityplace 1
execute if score #temp lostcityplace matches 0.. run function custom:maps/lostcity/place/2