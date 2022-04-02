tellraw @s [{"text":"Coins: ","color":"gold"},{"score":{"name":"@s","objective":"Coins"},"color":"red"}]
scoreboard players set @s money 0
execute at @s run playsound minecraft:block.note_block.pling master @s[tag=!soundoff] ~ ~ ~ 0.5 2