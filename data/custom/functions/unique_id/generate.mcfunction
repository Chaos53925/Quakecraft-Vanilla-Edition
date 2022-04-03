execute store result score @s uID run data get entity @s UUID[3]
scoreboard players add #Base uID 1
tag @s add uID
execute as @r[tag=!uID,scores={rightclick=1..}] run function custom:unique_id/generate
