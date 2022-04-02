
execute as @s run function custom:shop/deso/initdeso
tellraw @s {"translate":"shop.lesscoins"}
playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~