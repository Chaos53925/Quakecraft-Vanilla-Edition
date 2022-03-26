tag @s add candyvote
tellraw @a[team=candy] [{"selector":"@s","color":"aqua"},{"translate":"map.vote.success","color":"yellow"}]
scoreboard players set @s book 0
