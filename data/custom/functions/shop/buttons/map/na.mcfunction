execute as @s run function custom:shop/map/initmap
tellraw @s {"translate":"shop.map.na"}
playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~