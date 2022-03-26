
execute unless entity @p[team=apex,tag=a10] as @a[team=apex,tag=!a1,tag=!a2,tag=!a3,tag=!a4,tag=!a5,tag=!a6,tag=!a7,tag=!a8,tag=!a9] if score @s ApexKills = #temp apexplace run tag @s add a10
execute as @a[team=apex,tag=a10] run scoreboard players add #temp apextag 1
execute if score #temp apextag matches 2.. run tag @r[team=apex,tag=a10] add a10a
execute if score #temp apextag matches 2.. run tag @a[team=apex,tag=!a10a] remove a10
tag @a[team=apex] remove a10a
scoreboard players set #temp apextag 0
scoreboard players remove #temp apexplace 1
execute if score #temp apexplace matches 0.. run function custom:maps/apex/place/10