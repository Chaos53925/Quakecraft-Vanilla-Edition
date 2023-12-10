
execute unless entity @p[team=apex,tag=a7] as @a[team=apex,tag=!a1,tag=!a2,tag=!a3,tag=!a4,tag=!a5,tag=!a6] if score @s ApexKills = #temp apexplace run tag @s add a7
execute as @a[team=apex,tag=a7] run scoreboard players add #temp apextag 1
execute if score #temp apextag matches 2.. run tag @r[team=apex,tag=a7] add a7a
execute if score #temp apextag matches 2.. run tag @a[team=apex,tag=!a7a] remove a7
tag @a[team=apex] remove a7a
scoreboard players set #temp apextag 0
scoreboard players remove #temp apexplace 1
execute if score #temp apexplace matches 0.. run function maps:apex/place/7