
execute as @s run function custom:shop/deso/initdeso
tellraw @s {"translate":"shop.deso.active"}
playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~