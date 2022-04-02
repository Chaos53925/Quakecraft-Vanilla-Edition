tellraw @s {"text":"","color":"gray"}
tellraw @s {"translate":"stats.game","color":"gray"}
tellraw @s [{"translate":"stats.game.games","color":"dark_aqua"},{"text":" | ","color":"gray"},{"translate":"stats.game.wins","color":"green"},{"text":" | ","color":"gray"},{"translate":"stats.game.lost","color":"red"}]
tellraw @s [{"score":{"name":"@s","objective":"games"},"color":"dark_aqua"},{"text":" |","color":"gray"},{"text":" "},{"score":{"name":"@s","objective":"Wins"},"color":"green"},{"text":" |","color":"gray"},{"text":" "},{"score":{"name":"@s","objective":"lost"},"color":"red"}]

tellraw @s {"text":"","color":"gray"}
tellraw @s {"translate":"stats.gun","color":"gray"}
tellraw @s [{"translate":"stats.gun.shots","color":"yellow"},{"text":" | ","color":"gray"},{"text":"Kills","color":"yellow"}]
tellraw @s [{"score":{"name":"@s","objective":"shots"},"color":"yellow"},{"text":" |","color":"gray"},{"text":" "},{"score":{"name":"@s","objective":"Kills"},"color":"yellow"}]
tellraw @s {"text":"","color":"gray"}
tellraw @s [{"text":"Snipeshots","color":"aqua"},{"text":" | ","color":"gray"},{"text":"Super-Snipeshots","color":"dark_purple"},{"text":" | ","color":"gray"},{"text":"Headshots","color":"red"}]
tellraw @s [{"score":{"name":"@s","objective":"snipe"},"color":"aqua"},{"text":" |","color":"gray"},{"text":" "},{"score":{"name":"@s","objective":"supersnipe"},"color":"dark_purple"},{"text":" |","color":"gray"},{"text":" "},{"score":{"name":"@s","objective":"headshots"},"color":"red"}]

tellraw @s {"text":"","color":"gray"}
tellraw @s {"translate":"stats.kill","color":"gray"}
tellraw @s [{"text":"Double","color":"green"},{"text":" |","color":"gray"},{"text":" Triple","color":"yellow"},{"text":" |","color":"gray"},{"text":" Multi","color":"red"},{"text":" |","color":"gray"},{"text":" God-like","color":"gold"}]
tellraw @s [{"score":{"name":"@s","objective":"dkills"},"color":"green"},{"text":" | ","color":"gray"},{"score":{"name":"@s","objective":"tkills"},"color":"yellow"},{"text":" |","color":"gray"},{"text":" "},{"score":{"name":"@s","objective":"mkills"},"color":"red"},{"text":" | ","color":"gray"},{"score":{"name":"@s","objective":"gkills"},"color":"gold"},{"text":" ","color":"green"}]
tellraw @s {"text":"","color":"gray"}

scoreboard players set @s stats 0
execute at @s run execute at @s run playsound minecraft:block.note_block.pling master @s[tag=!soundoff] ~ ~ ~ 0.5 2
