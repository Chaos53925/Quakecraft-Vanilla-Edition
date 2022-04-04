
execute as @s run function shop:kipa/initkipa
tellraw @s {"translate":"shop.lesscoins"}

execute at @s run playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~