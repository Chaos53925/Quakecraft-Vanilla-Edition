execute as @s run tellraw @a[tag=pay.sender] [{"translate":"pay.okplayer","color": "yellow"},{"text":" "},{"selector":"@s","color": "green"}]
scoreboard players operation @a[tag=pay.sender] pid = @a[tag=pay.sender] pay

execute at @s run execute at @s run playsound minecraft:block.note_block.pling master @s[tag=!soundsoff] ~ ~ ~ 0.5 2