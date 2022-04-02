
execute as @s run function custom:shop/weap/initweap
tellraw @s {"translate":"shop.lesslevel"}

playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~