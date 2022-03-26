execute store result score @s dID run data get entity @s UUID[3]
scoreboard players add #Base dID 1
tag @s add dID
execute as @r[tag=!dID,scores={rightclick=1..}] run function custom:dynamic_id/generate
