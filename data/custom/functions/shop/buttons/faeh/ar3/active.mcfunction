
execute as @s[tag=!ar3.1,tag=!ar3.2,tag=!ar3.3,scores={xp=..19}] run function custom:shop/buttons/lesslevel
execute as @s[tag=!ar3.1,tag=!ar3.2,tag=!ar3.3,scores={Coins=..9999,xp=20..}] run function custom:shop/buttons/lesscoins
execute as @s[tag=!ar3.1,tag=!ar3.2,tag=!ar3.3,scores={Coins=10000..,xp=20..}] run tag @s add ar3.1
execute as @s[tag=!ar3.1,tag=!ar3.2,tag=!ar3.3,scores={Coins=10000..,xp=20..}] run scoreboard players remove @s Coins 10000
execute as @s[tag=!ar3.1,tag=!ar3.2,tag=!ar3.3,scores={Coins=10000..,xp=20..}] run tellraw @s {"translate": "shop.upgrade.buy"}

execute as @s[tag=ar3.1,tag=!ar3.2,tag=!ar3.3,scores={xp=..24}] run function custom:shop/buttons/lesslevel
execute as @s[tag=ar3.1,tag=!ar3.2,tag=!ar3.3,scores={Coins=..19999,xp=25..}] run function custom:shop/buttons/lesscoins
execute as @s[tag=ar3.1,tag=!ar3.2,tag=!ar3.3,scores={Coins=20000..,xp=25..}] run tag @s add ar3.2
execute as @s[tag=ar3.1,tag=!ar3.2,tag=!ar3.3,scores={Coins=20000..,xp=25..}] run scoreboard players remove @s Coins 20000
execute as @s[tag=ar3.1,tag=!ar3.2,tag=!ar3.3,scores={Coins=20000..,xp=25..}] run tellraw @s {"translate": "shop.upgrade.buy"}

execute as @s[tag=ar3.1,tag=ar3.2,tag=!ar3.3,scores={xp=..29}] run function custom:shop/buttons/lesslevel
execute as @s[tag=ar3.1,tag=ar3.2,tag=!ar3.3,scores={Coins=..29999,xp=30..}] run function custom:shop/buttons/lesscoins
execute as @s[tag=ar3.1,tag=ar3.2,tag=!ar3.3,scores={Coins=30000..,xp=30..}] run tag @s add ar3.3
execute as @s[tag=ar3.1,tag=ar3.2,tag=!ar3.3,scores={Coins=30000..,xp=30..}] run scoreboard players remove @s Coins 30000
execute as @s[tag=ar3.1,tag=ar3.2,tag=!ar3.3,scores={Coins=30000..,xp=30..}] run tellraw @s {"translate": "shop.upgrade.buy"}

tellraw @s[tag=ar3.1,tag=ar3.2,tag=!ar3.3] {"translate":"shop.faeh.active"}
execute as @s run function custom:shop/faeh/initfaeh