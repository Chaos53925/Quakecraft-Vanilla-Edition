tag @s add candyvote
tellraw @a[team=candy] [{"translate":"map.vote.success","color":"yellow","with":[{"selector":"@s","color":"red"}]}]
scoreboard players set @s book 0
execute at @s run playsound minecraft:block.note_block.pling master @s[tag=!soundsoff] ~ ~ ~ 0.5 2
