execute as @s run tellraw @a[tag=pay.sender] [{"translate":"pay.okplayer"},{"selector":"@s"}]
scoreboard players operation @a[tag=pay.sender] pid = @a[tag=pay.sender] pay