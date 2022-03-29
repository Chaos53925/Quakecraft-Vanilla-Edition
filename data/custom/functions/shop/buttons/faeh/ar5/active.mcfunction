
execute as @s[tag=!ar5.1,tag=!ar5.2,tag=!ar5.3,scores={xp=..9}] run function custom:shop/buttons/lesslevel
execute as @s[tag=!ar5.1,tag=!ar5.2,tag=!ar5.3,scores={Coins=..2499,xp=10..}] run function custom:shop/buttons/lesscoins
execute as @s[tag=!ar5.1,tag=!ar5.2,tag=!ar5.3,scores={Coins=2500..,xp=10..}] run tag @s add ar5.1
execute as @s[tag=!ar5.1,tag=!ar5.2,tag=!ar5.3,scores={Coins=2500..,xp=10..}] run scoreboard players remove @s Coins 2500
execute as @s[tag=!ar5.1,tag=!ar5.2,tag=!ar5.3,scores={Coins=2500..,xp=10..}] run tellraw @s {"translate": "shop.upgrade.buy"}

execute as @s[tag=ar5.1,tag=!ar5.2,tag=!ar5.3,scores={xp=..14}] run function custom:shop/buttons/lesslevel
execute as @s[tag=ar5.1,tag=!ar5.2,tag=!ar5.3,scores={Coins=..4999,xp=15..}] run function custom:shop/buttons/lesscoins
execute as @s[tag=ar5.1,tag=!ar5.2,tag=!ar5.3,scores={Coins=5000..,xp=15..}] run tag @s add ar5.2
execute as @s[tag=ar5.1,tag=!ar5.2,tag=!ar5.3,scores={Coins=5000..,xp=15..}] run scoreboard players remove @s Coins 5000
execute as @s[tag=ar5.1,tag=!ar5.2,tag=!ar5.3,scores={Coins=5000..,xp=15..}] run tellraw @s {"translate": "shop.upgrade.buy"}

execute as @s[tag=ar5.1,tag=ar5.2,tag=!ar5.3,scores={xp=..19}] run function custom:shop/buttons/lesslevel
execute as @s[tag=ar5.1,tag=ar5.2,tag=!ar5.3,scores={Coins=..9999,xp=20..}] run function custom:shop/buttons/lesscoins
execute as @s[tag=ar5.1,tag=ar5.2,tag=!ar5.3,scores={Coins=10000..,xp=20..}] run tag @s add ar5.3
execute as @s[tag=ar5.1,tag=ar5.2,tag=!ar5.3,scores={Coins=10000..,xp=20..}] run scoreboard players remove @s Coins 10000
execute as @s[tag=ar5.1,tag=ar5.2,tag=!ar5.3,scores={Coins=10000..,xp=20..}] run tellraw @s {"translate": "shop.upgrade.buy"}

tellraw @s[tag=ar5.1,tag=ar5.2,tag=!ar5.3] {"translate":"shop.faeh.active"}
execute as @s run function custom:shop/faeh/initfaeh