
execute as @s run function shop:weap/initweap
tellraw @s {"translate":"shop.lesslevel"}

execute at @s run playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~