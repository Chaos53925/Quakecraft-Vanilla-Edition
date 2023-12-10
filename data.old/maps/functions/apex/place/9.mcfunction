
execute unless entity @p[team=apex,tag=a9] as @a[team=apex,tag=!a1,tag=!a2,tag=!a3,tag=!a4,tag=!a5,tag=!a6,tag=!a7,tag=!a8] if score @s ApexKills = #temp apexplace run tag @s add a9
execute as @a[team=apex,tag=a9] run scoreboard players add #temp apextag 1
execute if score #temp apextag matches 2.. run tag @r[team=apex,tag=a9] add a9a
execute if score #temp apextag matches 2.. run tag @a[team=apex,tag=!a9a] remove a9
tag @a[team=apex] remove a9a
scoreboard players set #temp apextag 0
scoreboard players remove #temp apexplace 1
execute if score #temp apexplace matches 0.. run function maps:apex/place/9