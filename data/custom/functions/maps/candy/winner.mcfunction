execute as @a[team=candy] run scoreboard players operation #temp candyplace > @s CandyKills
execute as @a[team=candy] if score @s CandyKills = #temp candyplace run tag @s add c1
execute as @a[team=candy,tag=c1] run scoreboard players add #temp candytag 1
execute if score #temp candytag matches 2.. run tag @r[team=candy,tag=c1] add c1a
execute if score #temp candytag matches 2.. run tag @a[team=candy,tag=!c1a] remove c1
tag @a[team=candy] remove c1a
scoreboard players set #temp candytag 0