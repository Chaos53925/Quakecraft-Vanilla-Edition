
execute as @s run function custom:shop/faeh/initfaeh
tellraw @s {"translate":"shop.lesslevel"}

playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~