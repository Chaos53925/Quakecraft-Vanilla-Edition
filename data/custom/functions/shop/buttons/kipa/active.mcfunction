
execute as @s run function custom:shop/kipa/initkipa
tellraw @s {"translate":"shop.kipa.active"}

execute at @s run playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~