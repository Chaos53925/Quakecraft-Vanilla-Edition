execute as @s run function custom:shop/map/initmap
tellraw @s {"translate":"shop.map.na"}
execute at @s run playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~