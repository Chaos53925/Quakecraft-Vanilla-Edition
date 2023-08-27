
execute as @s[tag=ar2] at @s run function abilities:abilities/immune
execute as @s[tag=ar3] at @s run function abilities:abilities/tp
execute as @s[tag=ar4] at @s run function abilities:abilities/reload
execute as @s[tag=ar5] at @s run function abilities:abilities/speed
execute as @s[tag=ar6] at @s run function abilities:abilities/invisibility
execute as @s[tag=ar7] at @s run function abilities:abilities/extrashot
execute as @s[tag=br1] at @s[predicate=abilities:browniestyle] run function abilities:specialabilities/brownie/brownie
execute as @s[tag=br1] at @s[predicate=!abilities:browniestyle] run function abilities:specialabilities/brownie/browniefail
execute as @s[tag=mn1] at @s run function abilities:specialabilities/mine/mine
execute as @s[tag=kr1] at @s run function abilities:specialabilities/karma

