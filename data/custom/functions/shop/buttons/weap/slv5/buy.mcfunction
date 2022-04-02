tellraw @s {"translate":"shop.weap.buy"}

tag @s add slv5b
scoreboard players remove @s Coins 45000
tag @s remove slv1
tag @s remove slv2
tag @s remove slv3
tag @s remove slv4
tag @s remove slv6
tag @s remove wlv1
tag @s remove wlv2
tag @s remove wlv3
tag @s remove wlv4
tag @s remove wlv5
tag @s remove wlv6
tag @s remove wlv7
tag @s add slv5
tag @s[tag=ar4] add ar7
tag @s[tag=ar4] remove ar4
execute as @s run function custom:shop/weap/initweap

execute at @s run playsound minecraft:block.note_block.pling master @s[tag=!soundoff] ~ ~ ~ 0.5 2