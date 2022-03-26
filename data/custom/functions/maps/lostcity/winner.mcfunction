execute as @a[team=lostcity] run scoreboard players operation #temp lostcityplace > @s LostcityKills
execute as @a[team=lostcity] if score @s LostcityKills = #temp lostcityplace run tag @s add l1
execute as @a[team=lostcity,tag=l1] run scoreboard players add #temp lostcitytag 1
execute if score #temp lostcitytag matches 2.. run tag @r[team=lostcity,tag=l1,limit=1] add l1a
execute if score #temp lostcitytag matches 2.. run tag @a[team=lostcity,tag=!l1a] remove l1
tag @a[team=lostcity] remove l1a
scoreboard players set #temp lostcitytag 0