
execute as @s run function custom:shop/shpa/initshpa
tellraw @s {"translate":"shop.shpa.active"}

playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~