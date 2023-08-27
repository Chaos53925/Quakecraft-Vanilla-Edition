#timer aktivierung
execute as @s[tag=!reloading,scores={shots=..0}] run function guns:reload/reloadset

#waffentimer
scoreboard players add @s guntimer 1

execute unless entity @s[scores={shots=1..}] unless entity @s[scores={gunrlsek=..0,gunrlmsek=..0}] if score @s guntimer matches 2.. run scoreboard players remove @s gunrlmsek 1
execute unless entity @s[scores={shots=1..}] unless entity @s[scores={gunrlsek=..0,gunrlmsek=..0}] if score @s guntimer matches 2.. run scoreboard players set @s guntimer 2
execute unless entity @s[scores={shots=1..}] unless entity @s[scores={gunrlsek=..0,gunrlmsek=..0}] if score @s guntimer matches 0 if score @s gunrlsek matches ..-1 run scoreboard players remove @s gunrlsek 1
execute unless entity @s[scores={shots=1..}] unless entity @s[scores={gunrlsek=..0,gunrlmsek=..0}] if score @s guntimer matches 0 if score @s gunrlsek matches ..-1 run scoreboard players set @s gunrlmsek 9

title @s actionbar [{"translate":"game.guns.reload","color":"gold","with":[{"text":"«","color":"red"},{"text":"»","color":"red"},{"text":"|","color":"red"},{"score":{"name":"@s","objective":"shots"},"color":"gold"},{"score":{"name":"@s","objective":"gunrlsek"},"color":"gold"},{"score":{"name":"@s","objective":"gunrlmsek"},"color":"gold"},{"score":{"name":"@s","objective":"kstreak"},"color":"gold"},{"score":{"name":"@s","objective":"effectsek"},"color":"gold"},{"score":{"name":"@s","objective":"Coin"},"color":"red"}]}]

#shotgun
scoreboard players set @s[tag=!wlv1,tag=!wlv2,tag=!wlv3,tag=!wlv4,tag=!wlv5,tag=!wlv6,tag=!wlv7,tag=!extrashot,scores={gunrlsek=0,gunrlmsek=0..,shots=0}] shots 2
scoreboard players set @s[tag=!wlv1,tag=!wlv2,tag=!wlv3,tag=!wlv4,tag=!wlv5,tag=!wlv6,tag=!wlv7,tag=extrashot,scores={gunrlsek=0,gunrlmsek=0..,shots=0}] shots 3

#railgun
scoreboard players set @s[tag=!slv1,tag=!slv2,tag=!slv3,tag=!slv4,tag=!slv5,tag=!slv6,scores={gunrlsek=0,gunrlmsek=0..,shots=0}] shots 1
tag @s[scores={gunrlsek=0,gunrlmsek=0..,shots=0}] remove reloading

#schussaktivierung
tag @s[scores={shots=1..}] add canShoot

#extraschussverarbeitung
tag @s[tag=extrashotused,scores={shots=3}] remove extrashot
tag @s[tag=!extrashot] remove extrashotused
