
execute as @s run function custom:shop/hat/inithat
tellraw @s {"translate":"shop.hat.active"}


execute at @s run playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~