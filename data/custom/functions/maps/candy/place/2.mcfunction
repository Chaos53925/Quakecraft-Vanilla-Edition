
execute unless entity @p[team=candy,tag=c2] as @a[team=candy,tag=!c1] if score @s CandyKills = #temp candyplace run tag @s add c2
execute as @a[team=candy,tag=c2] run scoreboard players add #temp candytag 1
execute if score #temp candytag matches 2.. run tag @r[team=candy,tag=c2,limit=1] add c2a
execute if score #temp candytag matches 2.. run tag @a[team=candy,tag=!c2a] remove c2
tag @a[team=candy] remove c2a
scoreboard players set #temp candytag 0
scoreboard players remove #temp candyplace 1
execute if score #temp candyplace matches 0.. run function custom:maps/candy/place/2