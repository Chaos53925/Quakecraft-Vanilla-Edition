#timer aktivierung
execute as @s[tag=!reloading,scores={ammo=..0}] run function guns:reload/reloadset

#waffentimer
scoreboard players add @s[scores={ammo=..0}] guntimer 1

execute if entity @s[scores={ammo=0,guntimer=2..}] run scoreboard players remove @s gunrlmsek 1
execute if entity @s[scores={ammo=0,guntimer=2..}] run scoreboard players set @s guntimer 2
execute if entity @s[scores={ammo=0,gunrlmsek=..-1}] run scoreboard players remove @s gunrlsek 1
execute if entity @s[scores={ammo=0,gunrlmsek=..-1}] run scoreboard players set @s gunrlmsek 9

title @s[tag=canShoot] actionbar [{"translate":"game.guns.reload","color":"gold","with":[{"text":"«","color":"red"},{"text":"»","color":"red"},{"text":"|","color":"red"},{"score":{"name":"@s","objective":"ammo"},"color":"green"},{"score":{"name":"@s","objective":"gunrlsek"},"color":"red"},{"score":{"name":"@s","objective":"gunrlmsek"},"color":"red"},{"score":{"name":"@s","objective":"kstreak"},"color":"red"},{"score":{"name":"@s","objective":"effectsek"},"color":"red"},{"score":{"name":"@s","objective":"Coin"},"color":"red"}]}]
title @s[tag=!canShoot] actionbar [{"translate":"game.guns.reload","color":"gold","with":[{"text":"«","color":"red"},{"text":"»","color":"red"},{"text":"|","color":"red"},{"score":{"name":"@s","objective":"ammo"},"color":"red"},{"score":{"name":"@s","objective":"gunrlsek"},"color":"red"},{"score":{"name":"@s","objective":"gunrlmsek"},"color":"red"},{"score":{"name":"@s","objective":"kstreak"},"color":"red"},{"score":{"name":"@s","objective":"effectsek"},"color":"red"},{"score":{"name":"@s","objective":"Coin"},"color":"red"}]}]

#shotgun
scoreboard players set @s[tag=!wlv1,tag=!wlv2,tag=!wlv3,tag=!wlv4,tag=!wlv5,tag=!wlv6,tag=!wlv7,tag=!extrashot,scores={gunrlsek=0,gunrlmsek=0,ammo=0}] ammo 2
scoreboard players set @s[tag=!wlv1,tag=!wlv2,tag=!wlv3,tag=!wlv4,tag=!wlv5,tag=!wlv6,tag=!wlv7,tag=extrashot,scores={gunrlsek=0,gunrlmsek=0,ammo=0}] ammo 3

#railgun
scoreboard players set @s[tag=!slv1,tag=!slv2,tag=!slv3,tag=!slv4,tag=!slv5,tag=!slv6,scores={gunrlsek=0,gunrlmsek=0,ammo=0}] ammo 1
tag @s[scores={ammo=1..}] remove reloading

#schussaktivierung
tag @s[scores={ammo=1..}] add canShoot

#extraschussverarbeitung
tag @s[tag=extrashotused,scores={ammo=3}] remove extrashot
tag @s[tag=!extrashot] remove extrashotused
