
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:16b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/faeh/initfaeh
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:18b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/faeh/initfaeh
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:19b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/faeh/initfaeh
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:20b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/faeh/initfaeh
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:21b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/faeh/initfaeh
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:22b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/faeh/initfaeh
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:23b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/faeh/initfaeh
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:24b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/faeh/initfaeh
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:25b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/faeh/initfaeh
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:26b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/faeh/initfaeh
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:27b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/faeh/initfaeh
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:28b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/faeh/initfaeh
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:29b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/faeh/initfaeh
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:30b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/faeh/initfaeh
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:31b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/faeh/initfaeh
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:32b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/faeh/initfaeh
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:33b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/faeh/initfaeh
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:34b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/faeh/initfaeh
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:35b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/faeh/initfaeh
item replace entity @s[tag=!game] hotbar.0 with air
item replace entity @s[tag=!game] hotbar.1 with air
item replace entity @s[tag=!game] hotbar.2 with air
item replace entity @s[tag=!game] hotbar.3 with air
item replace entity @s[tag=!game] hotbar.4 with air
item replace entity @s[tag=!game] hotbar.5 with air
item replace entity @s[tag=!game] hotbar.6 with air
item replace entity @s[tag=!game] hotbar.7 with air
#Spielereffekte
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#effekt 1
#effekt bereits ausgewählt
execute as @s[tag=!game,tag=ar1] unless entity @s[nbt={Inventory:[{Slot:10b, id:"minecraft:barrier"}]}] run function custom:shop/artikel/faeh/active
#effekt nicht ausgewählt.
execute as @s[tag=!game,tag=!ar1] unless entity @s[nbt={Inventory:[{Slot:10b, id:"minecraft:barrier"}]}] run function custom:shop/artikel/faeh/ar1/inactive
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#effekt 2
#effekt bereits ausgewählt
execute as @s[tag=!game,tag=ar2,tag=ar2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:netherite_block"}]}] run function custom:shop/artikel/faeh/active
#effekt nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!ar2,tag=ar2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:netherite_block"}]}] run function custom:shop/artikel/faeh/ar2/inactive
#effekt kaufen.
execute as @s[tag=!game,scores={xp=..39},tag=!ar2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:netherite_block"}]}] run function custom:shop/artikel/faeh/lesslevel
#effekt kaufen.
execute as @s[tag=!game,scores={Coins=75000..,xp=40..},tag=!ar2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:netherite_block"}]}] run function custom:shop/artikel/faeh/ar2/buy
#zu wenig Coins für Waffe
execute as @s[tag=!game,scores={Coins=..74999,xp=40..},tag=!ar2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:netherite_block"}]}] run function custom:shop/artikel/faeh/lesscoins
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#effekt 3
#effekt bereits ausgewählt
execute as @s[tag=!game,tag=ar3,tag=ar3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:ender_pearl"}]}] run function custom:shop/artikel/faeh/active
#effekt nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!ar3,tag=ar3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:ender_pearl"}]}] run function custom:shop/artikel/faeh/ar3/inactive
#effekt kaufen.
execute as @s[tag=!game,scores={xp=..14},tag=!ar3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:ender_pearl"}]}] run function custom:shop/artikel/faeh/lesslevel
#effekt kaufen.
execute as @s[tag=!game,scores={Coins=20000..,xp=15..},tag=!ar3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:ender_pearl"}]}] run function custom:shop/artikel/faeh/ar3/buy
#zu wenig Coins für Waffe
execute as @s[tag=!game,scores={Coins=..19999,xp=15..},tag=!ar3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:ender_pearl"}]}] run function custom:shop/artikel/faeh/lesscoins

#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#effekt 4
#effekt bereits ausgewählt
execute as @s[tag=!game,tag=ar4,tag=ar4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:gunpowder"}]}] run function custom:shop/artikel/faeh/active
#effekt bereits ausgewählt
execute as @s[tag=!game,tag=ar7,tag=ar4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:gunpowder"}]}] run function custom:shop/artikel/faeh/active
#effekt nicht ausgewählt aber gekauft wlv
execute as @s[tag=!slv1,tag=!slv2,tag=!slv3,tag=!slv4,tag=!slv5,tag=!slv6,tag=!game,tag=!ar4,tag=ar4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:gunpowder"}]}] run function custom:shop/artikel/faeh/ar4/inactive
#effekt nicht ausgewählt aber gekauft slv
execute as @s[tag=!wlv1,tag=!wlv2,tag=!wlv3,tag=!wlv4,tag=!wlv5,tag=!wlv6,tag=!wlv7,tag=!game,tag=!ar7,tag=ar4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:gunpowder"}]}] run function custom:shop/artikel/faeh/ar7/inactive
#effekt kaufen.
execute as @s[tag=!game,scores={xp=..44},tag=!ar4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:gunpowder"}]}] run function custom:shop/artikel/faeh/lesslevel
#effekt kaufen.
execute as @s[tag=!game,scores={Coins=100000..,xp=45..},tag=!ar4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:gunpowder"}]}] run function custom:shop/artikel/faeh/ar4/buy
#zu wenig Coins für Waffe
execute as @s[tag=!game,scores={Coins=..99999,xp=45..},tag=!ar4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:gunpowder"}]}] run function custom:shop/artikel/faeh/lesscoins

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#effekt 5
#effekt bereits ausgewählt
execute as @s[tag=!game,tag=ar5,tag=ar5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:netherite_boots"}]}] run function custom:shop/artikel/faeh/active
#effekt nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!ar5,tag=ar5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:netherite_boots"}]}] run function custom:shop/artikel/faeh/ar5/inactive
#effekt kaufen.
execute as @s[tag=!game,scores={xp=..4},tag=!ar5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:netherite_boots"}]}] run function custom:shop/artikel/faeh/lesslevel
#effekt kaufen.
execute as @s[tag=!game,scores={Coins=10000..,xp=5..},tag=!ar5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:netherite_boots"}]}] run function custom:shop/artikel/faeh/ar5/buy
#zu wenig Coins für Waffe
execute as @s[tag=!game,scores={Coins=..9999,xp=5..},tag=!ar5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:netherite_boots"}]}] run function custom:shop/artikel/faeh/lesscoins

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#effekt 6
#effekt bereits ausgewählt
execute as @s[tag=!game,tag=ar6,tag=ar6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:potion"}]}] run function custom:shop/artikel/faeh/active
#effekt nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!ar6,tag=ar6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:potion"}]}] run function custom:shop/artikel/faeh/ar6/inactive
#effekt kaufen.
execute as @s[tag=!game,scores={xp=..24},tag=!ar6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:potion"}]}] run function custom:shop/artikel/faeh/lesslevel
#effekt kaufen.
execute as @s[tag=!game,scores={Coins=50000..,xp=25..},tag=!ar6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:potion"}]}] run function custom:shop/artikel/faeh/ar6/buy
#zu wenig Coins für Waffe
execute as @s[tag=!game,scores={Coins=..49999,xp=25..},tag=!ar6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:potion"}]}] run function custom:shop/artikel/faeh/lesscoins

#persönliche spezialeffekte (keine zusätzlichen sprachen)
execute as @s[tag=!game,tag=br1] unless entity @s[nbt={Inventory:[{Slot:17b, id:"minecraft:brown_dye"}]}] run function custom:shop/artikel/faeh/active
execute as @s[tag=!game,tag=mn1] unless entity @s[nbt={Inventory:[{Slot:17b, id:"minecraft:tnt"}]}] run function custom:shop/artikel/faeh/active
execute as @s[tag=!game,tag=!br1,tag=!mn1] unless entity @s[nbt={Inventory:[{Slot:17b, id:"minecraft:barrier"}]}] run function custom:shop/artikel/faeh/special/inactive

execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:9b, id:"minecraft:red_stained_glass_pane"}]}] run function custom:shop/shop/initshop