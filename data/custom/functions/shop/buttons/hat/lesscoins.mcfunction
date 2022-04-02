
execute as @s run function custom:shop/hat/inithat
tellraw @s {"translate":"shop.lesscoins"}

playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~