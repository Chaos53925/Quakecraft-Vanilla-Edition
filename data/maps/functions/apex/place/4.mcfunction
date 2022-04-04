
execute unless entity @p[team=apex,tag=a4] as @a[team=apex,tag=!a1,tag=!a2,tag=!a3] if score @s ApexKills = #temp apexplace run tag @s add a4
execute as @a[tag=a4] run scoreboard players add #temp apextag 1
execute if score #temp apextag matches 2.. run tag @r[team=apex,tag=a4] add a4a
execute if score #temp apextag matches 2.. run tag @a[team=apex,tag=!a4a] remove a4
tag @a[team=apex] remove a4a
scoreboard players set #temp apextag 0
scoreboard players remove #temp apexplace 1
execute if score #temp apexplace matches 0.. run function maps:apex/place/4