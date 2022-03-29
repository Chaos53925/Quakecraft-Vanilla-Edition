
execute as @s[tag=!ar6.1,tag=!ar6.2,tag=!ar6.3,scores={xp=..29}] run function custom:shop/buttons/lesslevel
execute as @s[tag=!ar6.1,tag=!ar6.2,tag=!ar6.3,scores={Coins=..24999,xp=30..}] run function custom:shop/buttons/lesscoins
execute as @s[tag=!ar6.1,tag=!ar6.2,tag=!ar6.3,scores={Coins=25000..,xp=30..}] run tag @s add ar6.1
execute as @s[tag=!ar6.1,tag=!ar6.2,tag=!ar6.3,scores={Coins=25000..,xp=30..}] run scoreboard players remove @s Coins 25000
execute as @s[tag=!ar6.1,tag=!ar6.2,tag=!ar6.3,scores={Coins=25000..,xp=30..}] run tellraw @s {"translate": "shop.upgrade.buy"}

execute as @s[tag=ar6.1,tag=!ar6.2,tag=!ar6.3,scores={xp=..34}] run function custom:shop/buttons/lesslevel
execute as @s[tag=ar6.1,tag=!ar6.2,tag=!ar6.3,scores={Coins=..29999,xp=35..}] run function custom:shop/buttons/lesscoins
execute as @s[tag=ar6.1,tag=!ar6.2,tag=!ar6.3,scores={Coins=30000..,xp=35..}] run tag @s add ar6.2
execute as @s[tag=ar6.1,tag=!ar6.2,tag=!ar6.3,scores={Coins=30000..,xp=35..}] run scoreboard players remove @s Coins 30000
execute as @s[tag=ar6.1,tag=!ar6.2,tag=!ar6.3,scores={Coins=30000..,xp=35..}] run tellraw @s {"translate": "shop.upgrade.buy"}

execute as @s[tag=ar6.1,tag=ar6.2,tag=!ar6.3,scores={xp=..39}] run function custom:shop/buttons/lesslevel
execute as @s[tag=ar6.1,tag=ar6.2,tag=!ar6.3,scores={Coins=..39999,xp=40..}] run function custom:shop/buttons/lesscoins
execute as @s[tag=ar6.1,tag=ar6.2,tag=!ar6.3,scores={Coins=40000..,xp=40..}] run tag @s add ar6.3
execute as @s[tag=ar6.1,tag=ar6.2,tag=!ar6.3,scores={Coins=40000..,xp=40..}] run scoreboard players remove @s Coins 40000
execute as @s[tag=ar6.1,tag=ar6.2,tag=!ar6.3,scores={Coins=40000..,xp=40..}] run tellraw @s {"translate": "shop.upgrade.buy"}

tellraw @s[tag=ar6.1,tag=ar6.2,tag=!ar6.3] {"translate":"shop.faeh.active"}
execute as @s run function custom:shop/faeh/initfaeh