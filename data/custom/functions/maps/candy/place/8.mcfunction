
execute unless entity @p[team=candy,tag=c8] as @a[team=candy,tag=!c1,tag=!c2,tag=!c3,tag=!c4,tag=!c5,tag=!c6,tag=!c7] if score @s CandyKills = #temp candyplace run tag @s add c8
execute as @a[team=candy,tag=c8] run scoreboard players add #temp candytag 1
execute if score #temp candytag matches 2.. run tag @r[team=candy,tag=c8,limit=1] add c8a
execute if score #temp candytag matches 2.. run tag @a[team=candy,tag=!c8a] remove c8
tag @a[team=candy] remove c8a
scoreboard players set #temp candytag 0
scoreboard players remove #temp candyplace 1
execute if score #temp candyplace matches 0.. run function custom:maps/candy/place/8