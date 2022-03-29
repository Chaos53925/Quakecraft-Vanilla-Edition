
execute as @s[tag=!ar4.1,tag=!ar4.2,tag=!ar4.3,tag=!ar4.4,tag=!ar5.4,scores={xp=..49}] run function custom:shop/buttons/lesslevel
execute as @s[tag=!ar4.1,tag=!ar4.2,tag=!ar4.3,tag=!ar4.4,tag=!ar5.4,scores={Coins=..29999,xp=50..}] run function custom:shop/buttons/lesscoins
execute as @s[tag=!ar4.1,tag=!ar4.2,tag=!ar4.3,tag=!ar4.4,tag=!ar5.4,scores={Coins=30000..,xp=50..}] run tag @s add ar4.1
execute as @s[tag=!ar4.1,tag=!ar4.2,tag=!ar4.3,tag=!ar4.4,tag=!ar5.4,scores={Coins=30000..,xp=50..}] run scoreboard players remove @s Coins 30000
execute as @s[tag=!ar4.1,tag=!ar4.2,tag=!ar4.3,tag=!ar4.4,tag=!ar5.4,scores={Coins=30000..,xp=50..}] run tellraw @s {"translate": "shop.upgrade.buy"}

execute as @s[tag=ar4.1,tag=!ar4.2,tag=!ar4.3,tag=!ar4.4,tag=!ar5.4,scores={xp=..94}] run function custom:shop/buttons/lesslevel
execute as @s[tag=ar4.1,tag=!ar4.2,tag=!ar4.3,tag=!ar4.4,tag=!ar5.4,scores={Coins=..39999,xp=65..}] run function custom:shop/buttons/lesscoins
execute as @s[tag=ar4.1,tag=!ar4.2,tag=!ar4.3,tag=!ar4.4,tag=!ar5.4,scores={Coins=40000..,xp=65..}] run tag @s add ar4.2
execute as @s[tag=ar4.1,tag=!ar4.2,tag=!ar4.3,tag=!ar4.4,tag=!ar5.4,scores={Coins=40000..,xp=65..}] run scoreboard players remove @s Coins 40000
execute as @s[tag=ar4.1,tag=!ar4.2,tag=!ar4.3,tag=!ar4.4,tag=!ar5.4,scores={Coins=40000..,xp=65..}] run tellraw @s {"translate": "shop.upgrade.buy"}

execute as @s[tag=ar4.1,tag=ar4.2,tag=!ar4.3,tag=!ar4.4,tag=!ar5.4,scores={xp=..79}] run function custom:shop/buttons/lesslevel
execute as @s[tag=ar4.1,tag=ar4.2,tag=!ar4.3,tag=!ar4.4,tag=!ar5.4,scores={Coins=..59999,xp=80..}] run function custom:shop/buttons/lesscoins
execute as @s[tag=ar4.1,tag=ar4.2,tag=!ar4.3,tag=!ar4.4,tag=!ar5.4,scores={Coins=60000..,xp=80..}] run tag @s add ar4.3
execute as @s[tag=ar4.1,tag=ar4.2,tag=!ar4.3,tag=!ar4.4,tag=!ar5.4,scores={Coins=60000..,xp=80..}] run scoreboard players remove @s Coins 60000
execute as @s[tag=ar4.1,tag=ar4.2,tag=!ar4.3,tag=!ar4.4,tag=!ar5.4,scores={Coins=60000..,xp=80..}] run tellraw @s {"translate": "shop.upgrade.buy"}

execute as @s[tag=ar4.1,tag=ar4.2,tag=ar4.3,tag=!ar4.4,tag=!ar5.4,scores={xp=..89}] run function custom:shop/buttons/lesslevel
execute as @s[tag=ar4.1,tag=ar4.2,tag=ar4.3,tag=!ar4.4,tag=!ar5.4,scores={Coins=..74999,xp=90..}] run function custom:shop/buttons/lesscoins
execute as @s[tag=ar4.1,tag=ar4.2,tag=ar4.3,tag=!ar4.4,tag=!ar5.4,scores={Coins=75000..,xp=90..}] run tag @s add ar4.3
execute as @s[tag=ar4.1,tag=ar4.2,tag=ar4.3,tag=!ar4.4,tag=!ar5.4,scores={Coins=75000..,xp=90..}] run scoreboard players remove @s Coins 75000
execute as @s[tag=ar4.1,tag=ar4.2,tag=ar4.3,tag=!ar4.4,tag=!ar5.4,scores={Coins=75000..,xp=90..}] run tellraw @s {"translate": "shop.upgrade.buy"}

execute as @s[tag=ar4.1,tag=ar4.2,tag=ar4.3,tag=ar4.4,tag=!ar5.4,scores={xp=..99}] run function custom:shop/buttons/lesslevel
execute as @s[tag=ar4.1,tag=ar4.2,tag=ar4.3,tag=ar4.4,tag=!ar5.4,scores={Coins=..99999,xp=100..}] run function custom:shop/buttons/lesscoins
execute as @s[tag=ar4.1,tag=ar4.2,tag=ar4.3,tag=ar4.4,tag=!ar5.4,scores={Coins=100000..,xp=100..}] run tag @s add ar4.3
execute as @s[tag=ar4.1,tag=ar4.2,tag=ar4.3,tag=ar4.4,tag=!ar5.4,scores={Coins=100000..,xp=100..}] run scoreboard players remove @s Coins 100000
execute as @s[tag=ar4.1,tag=ar4.2,tag=ar4.3,tag=ar4.4,tag=!ar5.4,scores={Coins=100000..,xp=100..}] run tellraw @s {"translate": "shop.upgrade.buy"}

tellraw @s[tag=ar4.1,tag=ar4.2,tag=!ar4.3,tag=!ar4.4,tag=!ar5.4] {"translate":"shop.faeh.active"}
execute as @s run function custom:shop/faeh/initfaeh