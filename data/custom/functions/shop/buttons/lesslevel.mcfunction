
execute as @s[tag=weap] run function custom:shop/weap/initweap
execute as @s[tag=shpa] run function custom:shop/shpa/initshpa
execute as @s[tag=kipa] run function custom:shop/kipa/initkipa
execute as @s[tag=deso] run function custom:shop/deso/initdeso
execute as @s[tag=shso] run function custom:shop/shso/initshso
execute as @s[tag=faeh] run function custom:shop/faeh/initfaeh
execute as @s[tag=hat] run function custom:shop/hat/inithat
tellraw @s {"translate":"shop.lesslevel"}
