execute as @a[team=apex] run scoreboard players operation #temp apexplace > @s ApexKills
execute as @a[team=apex] if score @s ApexKills = #temp apexplace run tag @s add a1
execute as @a[team=apex,tag=a1] run scoreboard players add #temp apextag 1
execute if score #temp apextag matches 2.. run tag @r[team=apex,tag=a1] add a1a
execute if score #temp apextag matches 2.. run tag @a[team=apex,tag=!a1a] remove a1
tag @a[team=apex] remove a1a
scoreboard players set #temp apextag 0