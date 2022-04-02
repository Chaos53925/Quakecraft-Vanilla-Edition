
execute as @s run function custom:shop/kipa/initkipa
tellraw @s {"translate":"shop.lesscoins"}

playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~