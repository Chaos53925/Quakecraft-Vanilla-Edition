tag @s add candyvote
tellraw @a[team=candy] [{"selector":"@s","color":"aqua"},{"translate":"map.vote.success","color":"yellow"}]
scoreboard players set @s book 0
execute at @s run playsound minecraft:block.note_block.pling master @s[tag=!soundoff] ~ ~ ~ 0.5 2
