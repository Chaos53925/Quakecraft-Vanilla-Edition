tellraw @s {"translate":"pay.nocoins","color":"yellow"}
scoreboard players set @s pay -1
scoreboard players set @s pid 0
execute at @s run playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~