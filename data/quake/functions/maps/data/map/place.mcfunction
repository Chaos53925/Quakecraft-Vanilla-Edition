# Platzierungsermittlung
execute as @a[team=apex] unless score @s apexPlace = @s apexPlace if score @p ApexKills = @p[scores={apexPlace=1}] apexTemp store result score @s apexPlace run scoreboard players add #counter apexPlace 1
scoreboard players remove @p[team=apex,scores={apexPlace=1}] temp 1
execute if score @p[team=apex,scores={apexPlace=1}] temp matches 0.. run function maps:map/place