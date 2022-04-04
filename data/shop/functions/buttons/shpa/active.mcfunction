
execute as @s run function shop:shpa/initshpa
tellraw @s {"translate":"shop.shpa.active"}

execute at @s run playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~