tag @s add desertvote
tellraw @a[team=desert] [{"selector":"@s","color":"gold"},{"translate":"map.vote.success","color":"yellow"}]
scoreboard players set @s book 0
execute at @s run playsound minecraft:block.note_block.pling master @s[tag=!soundsoff] ~ ~ ~ 0.5 2
