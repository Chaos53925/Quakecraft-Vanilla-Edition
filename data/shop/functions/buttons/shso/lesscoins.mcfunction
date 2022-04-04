
execute as @s run function shop:shso/initshso
tellraw @s {"translate":"shop.lesscoins"}

execute at @s run playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~