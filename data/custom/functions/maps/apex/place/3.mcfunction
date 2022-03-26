
execute unless entity @p[team=apex,tag=a3] as @a[team=apex,tag=!a1,tag=!a2] if score @s ApexKills = #temp apexplace run tag @s add a3
execute as @a[team=apex,tag=a3] run scoreboard players add #temp apextag 1
execute if score #temp apextag matches 2.. run tag @r[team=apex,tag=a3] add a3a
execute if score #temp apextag matches 2.. run tag @a[team=apex,tag=!a3a] remove a3
tag @a[team=apex] remove a3a
scoreboard players set #temp apextag 0
scoreboard players remove #temp apexplace 1
execute if score #temp apexplace matches 0.. run function custom:maps/apex/place/3