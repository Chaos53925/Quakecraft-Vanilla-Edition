
execute as @s run function shop:deso/initdeso
tellraw @s {"translate":"shop.deso.active"}
execute at @s run playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~