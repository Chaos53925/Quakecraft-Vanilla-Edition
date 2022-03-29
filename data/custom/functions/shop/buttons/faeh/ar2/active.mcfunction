
execute as @s[tag=!ar2.1,tag=!ar2.2,tag=!ar2.3,scores={xp=..44}] run function custom:shop/buttons/lesslevel
execute as @s[tag=!ar2.1,tag=!ar2.2,tag=!ar2.3,scores={Coins=..19999,xp=45..}] run function custom:shop/buttons/lesscoins
execute as @s[tag=!ar2.1,tag=!ar2.2,tag=!ar2.3,scores={Coins=20000..,xp=45..}] run tag @s add ar2.1
execute as @s[tag=!ar2.1,tag=!ar2.2,tag=!ar2.3,scores={Coins=20000..,xp=45..}] run scoreboard players remove @s Coins 20000
execute as @s[tag=!ar2.1,tag=!ar2.2,tag=!ar2.3,scores={Coins=20000..,xp=45..}] run tellraw @s {"translate": "shop.upgrade.buy"}

execute as @s[tag=ar2.1,tag=!ar2.2,tag=!ar2.3,scores={xp=..49}] run function custom:shop/buttons/lesslevel
execute as @s[tag=ar2.1,tag=!ar2.2,tag=!ar2.3,scores={Coins=..24999,xp=50..}] run function custom:shop/buttons/lesscoins
execute as @s[tag=ar2.1,tag=!ar2.2,tag=!ar2.3,scores={Coins=25000..,xp=50..}] run tag @s add ar2.2
execute as @s[tag=ar2.1,tag=!ar2.2,tag=!ar2.3,scores={Coins=25000..,xp=50..}] run scoreboard players remove @s Coins 25000
execute as @s[tag=ar2.1,tag=!ar2.2,tag=!ar2.3,scores={Coins=25000..,xp=50..}] run tellraw @s {"translate": "shop.upgrade.buy"}

execute as @s[tag=ar2.1,tag=ar2.2,tag=!ar2.3,scores={xp=..59}] run function custom:shop/buttons/lesslevel
execute as @s[tag=ar2.1,tag=ar2.2,tag=!ar2.3,scores={Coins=..34999,xp=60..}] run function custom:shop/buttons/lesscoins
execute as @s[tag=ar2.1,tag=ar2.2,tag=!ar2.3,scores={Coins=35000..,xp=60..}] run tag @s add ar2.3
execute as @s[tag=ar2.1,tag=ar2.2,tag=!ar2.3,scores={Coins=35000..,xp=60..}] run scoreboard players remove @s Coins 35000
execute as @s[tag=ar2.1,tag=ar2.2,tag=!ar2.3,scores={Coins=35000..,xp=60..}] run tellraw @s {"translate": "shop.upgrade.buy"}

tellraw @s[tag=ar2.1,tag=ar2.2,tag=!ar2.3] {"translate":"shop.faeh.active"}
execute as @s run function custom:shop/faeh/initfaeh