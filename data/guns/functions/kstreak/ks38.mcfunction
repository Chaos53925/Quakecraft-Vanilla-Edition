tellraw @s [{"text":"The impossible killstreak","color":"red"},{"text":" -> ","color":"yellow"},{"text":"38\n","color":"green"},{"text":"+ ","color":"yellow"},{"text":"5000","color":"red"},{"text":" Coins","color":"gold"},{"text":".","color":"yellow"}]
scoreboard players add @s Coins 5000
scoreboard players add @s Coin 5000
scoreboard players add @s ks38 1
tag @s add ks38
execute at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 0.4 1 0.3