tag @s add lostcityvote
tellraw @a[team=lostcity] [{"selector":"@s","color":"gray"},{"translate":"map.vote.success","color":"yellow"}]
scoreboard players set @s book 0
