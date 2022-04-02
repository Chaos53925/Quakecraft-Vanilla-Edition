
execute as @s run function custom:shop/shpa/initshpa
tellraw @s {"translate":"shop.lesscoins"}

execute at @s run playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~