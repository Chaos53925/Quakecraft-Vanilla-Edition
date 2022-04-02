tellraw @s {"translate":"pay.help","color":"yellow"}
scoreboard players set @s pay -1
scoreboard players set @s pid 0
execute at @s run execute at @s run playsound minecraft:block.note_block.pling master @s[tag=!soundsoff] ~ ~ ~ 0.5 2