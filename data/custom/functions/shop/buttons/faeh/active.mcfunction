
execute as @s run function custom:shop/faeh/initfaeh
tellraw @s {"translate":"shop.faeh.active"}
playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~