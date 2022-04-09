tellraw @s [{"text":"The impossible killstreak","color":"red"},{"text":" -> ","color":"yellow"},{"text":"38","color":"green"}]
scoreboard players add @s Coins 5000
scoreboard players add @s Coin 5000
scoreboard players add @s gCoin 5000
scoreboard players add @s ks38 1
tag @s add ks38
execute at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 0.4 1 0.3