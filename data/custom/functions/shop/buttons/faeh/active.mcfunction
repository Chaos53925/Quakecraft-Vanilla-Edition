
execute as @s run function custom:shop/faeh/initfaeh
tellraw @s {"translate":"shop.faeh.active"}
execute at @s run playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~