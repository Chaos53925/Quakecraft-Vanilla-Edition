
execute unless entity @p[team=apex,tag=a2] as @a[team=apex,tag=!a1] if score @s ApexKills = #temp apexplace run tag @s add a2
execute as @a[team=apex,tag=a2] run scoreboard players add #temp apextag 1
execute if score #temp apextag matches 2.. run tag @r[team=apex,tag=a2] add a2a
execute if score #temp apextag matches 2.. run tag @a[team=apex,tag=!a2a] remove a2
tag @a[team=apex] remove a2a
scoreboard players set #temp apextag 0
scoreboard players remove #temp apexplace 1
execute if score #temp apexplace matches 0.. run function maps:apex/place/2

# new
execute as @a[team=apex] unless score @s apexPlace = @s apexPlace if score @p ApexKills = @p[scores={apexPlace=1}] apexTemp store result score @s apexPlace run scoreboard players add #counter apexPlace 1
scoreboard players remove @p[team=apex,scores={apexPlace=1}] apexTemp 1
execute if score @p[team=apex,scores={apexPlace=1}] apexTemp matches 0.. run function maps:apex/place/test