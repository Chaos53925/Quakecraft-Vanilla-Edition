
execute as @s run function custom:shop/weap/initweap
tellraw @s {"translate":"shop.lesscoins"}

playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~