execute as @a[team=desert] run scoreboard players operation #temp desertplace > @s DesertKills
execute as @a[team=desert] if score @s DesertKills = #temp desertplace run tag @s add d1
execute as @a[team=desert,tag=d1] run scoreboard players add #temp deserttag 1
execute if score #temp deserttag matches 2.. run tag @r[team=desert,tag=d1] add d1a
execute if score #temp deserttag matches 2.. run tag @a[team=desert,tag=!d1a] remove d1
tag @a[team=desert] remove d1a
scoreboard players set #temp deserttag 0