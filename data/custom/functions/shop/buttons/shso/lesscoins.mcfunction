
execute as @s run function custom:shop/shso/initshso
tellraw @s {"translate":"shop.lesscoins"}

playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~