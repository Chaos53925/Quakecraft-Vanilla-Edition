
execute unless entity @p[team=lostcity,tag=l10] as @a[team=lostcity,tag=!l1,tag=!l2,tag=!l3,tag=!l4,tag=!l5,tag=!l6,tag=!l7,tag=!l8,tag=!l9] if score @s LostcityKills = #temp lostcityplace run tag @s add l10
execute as @a[team=lostcity,tag=l10] run scoreboard players add #temp lostcitytag 1
execute if score #temp lostcitytag matches 2.. run tag @r[team=lostcity,tag=l10] add l10a
execute if score #temp lostcitytag matches 2.. run tag @a[team=lostcity,tag=!l10a] remove l10
tag @a[team=lostcity] remove l10a
scoreboard players set #temp lostcitytag 0
scoreboard players remove #temp lostcityplace 1
execute if score #temp lostcityplace matches 0.. run function custom:maps/lostcity/place/10