
execute as @s run function shop:deso/initdeso
tellraw @s {"translate":"shop.lesscoins"}
execute at @s run playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~