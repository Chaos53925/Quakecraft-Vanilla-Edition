
execute as @s run function custom:shop/shso/initshso
tellraw @s {"translate":"shop.shso.active"}

playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~