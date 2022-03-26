tag @s add desertvote
tellraw @a[team=desert] [{"selector":"@s","color":"gold"},{"translate":"map.vote.success","color":"yellow"}]
scoreboard players set @s book 0
