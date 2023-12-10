
execute as @s run function shop:shso/initshso
tellraw @s {"translate":"shop.shso.active"}

execute at @s run playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~