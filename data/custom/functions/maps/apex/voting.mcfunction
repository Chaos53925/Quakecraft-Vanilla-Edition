tag @s add apexvote
tellraw @a[team=apex] [{"selector":"@s","color":"red"},{"translate":"map.vote.success","color":"yellow"}]
scoreboard players set @s book 0
