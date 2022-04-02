tellraw @s {"translate":"shop.weap.inactive"}

tag @s remove wlv1
tag @s remove wlv2
tag @s remove wlv3
tag @s remove wlv5
tag @s remove wlv6
tag @s remove wlv7
tag @s remove slv1
tag @s remove slv2
tag @s remove slv3
tag @s remove slv4
tag @s remove slv5
tag @s remove slv6
tag @s add wlv4
tag @s[tag=ar7] add ar4
tag @s[tag=ar7] remove ar7
execute as @s run function custom:shop/weap/initweap

execute at @s run playsound minecraft:block.note_block.pling master @s[tag=!soundsoff] ~ ~ ~ 0.5 2