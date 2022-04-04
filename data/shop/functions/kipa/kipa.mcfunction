
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:16b, id:"minecraft:gray_stained_glass_pane"}]}] run function shop:kipa/initkipa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:17b, id:"minecraft:gray_stained_glass_pane"}]}] run function shop:kipa/initkipa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:18b, id:"minecraft:gray_stained_glass_pane"}]}] run function shop:kipa/initkipa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:19b, id:"minecraft:gray_stained_glass_pane"}]}] run function shop:kipa/initkipa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:20b, id:"minecraft:gray_stained_glass_pane"}]}] run function shop:kipa/initkipa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:21b, id:"minecraft:gray_stained_glass_pane"}]}] run function shop:kipa/initkipa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:22b, id:"minecraft:gray_stained_glass_pane"}]}] run function shop:kipa/initkipa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:23b, id:"minecraft:gray_stained_glass_pane"}]}] run function shop:kipa/initkipa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:24b, id:"minecraft:gray_stained_glass_pane"}]}] run function shop:kipa/initkipa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:25b, id:"minecraft:gray_stained_glass_pane"}]}] run function shop:kipa/initkipa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:26b, id:"minecraft:gray_stained_glass_pane"}]}] run function shop:kipa/initkipa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:27b, id:"minecraft:gray_stained_glass_pane"}]}] run function shop:kipa/initkipa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:28b, id:"minecraft:gray_stained_glass_pane"}]}] run function shop:kipa/initkipa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:29b, id:"minecraft:gray_stained_glass_pane"}]}] run function shop:kipa/initkipa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:30b, id:"minecraft:gray_stained_glass_pane"}]}] run function shop:kipa/initkipa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:31b, id:"minecraft:gray_stained_glass_pane"}]}] run function shop:kipa/initkipa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:32b, id:"minecraft:gray_stained_glass_pane"}]}] run function shop:kipa/initkipa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:33b, id:"minecraft:gray_stained_glass_pane"}]}] run function shop:kipa/initkipa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:34b, id:"minecraft:gray_stained_glass_pane"}]}] run function shop:kipa/initkipa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:35b, id:"minecraft:gray_stained_glass_pane"}]}] run function shop:kipa/initkipa
item replace entity @s[tag=!game] hotbar.0 with air
item replace entity @s[tag=!game] hotbar.1 with air
item replace entity @s[tag=!game] hotbar.2 with air
item replace entity @s[tag=!game] hotbar.3 with air
item replace entity @s[tag=!game] hotbar.4 with air
item replace entity @s[tag=!game] hotbar.5 with air
item replace entity @s[tag=!game] hotbar.6 with air
item replace entity @s[tag=!game] hotbar.7 with air

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#Effekt 1
#Effekt bereits ausgewählt
execute as @s[tag=!game,tag=e1] unless entity @s[nbt={Inventory:[{Slot:10b, id:"minecraft:end_rod"}]}] run function shop:buttons/kipa/active
#Effekt nicht ausgewählt.
execute as @s[tag=!game,tag=!e1] unless entity @s[nbt={Inventory:[{Slot:10b, id:"minecraft:end_rod"}]}] run function shop:buttons/kipa/e1/inactive
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#Effekt 2
#Effekt bereits ausgewählt
execute as @s[tag=!game,tag=e2,tag=e2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:lava_bucket"}]}] run function shop:buttons/kipa/active
#Effekt nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!e2,tag=e2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:lava_bucket"}]}] run function shop:buttons/kipa/e2/inactive
#Effekt kaufen.
execute as @s[tag=!game,scores={Coins=500..},tag=!e2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:lava_bucket"}]}] run function shop:buttons/kipa/e2/buy
#zu wenig Coins für Waffe
execute as @s[tag=!game,scores={Coins=..499},tag=!e2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:lava_bucket"}]}] run function shop:buttons/kipa/lesscoins
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#Effekt 3
#Effekt bereits ausgewählt
execute as @s[tag=!game,tag=e3,tag=e3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:crying_obsidian"}]}] run function shop:buttons/kipa/active
#Effekt nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!e3,tag=e3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:crying_obsidian"}]}] run function shop:buttons/kipa/e3/inactive
#Effekt kaufen.
execute as @s[tag=!game,scores={Coins=500..},tag=!e3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:crying_obsidian"}]}] run function shop:buttons/kipa/e3/buy
#zu wenig Coins für Waffe
execute as @s[tag=!game,scores={Coins=..499},tag=!e3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:crying_obsidian"}]}] run function shop:buttons/kipa/lesscoins
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#Effekt 4
#Effekt bereits ausgewählt
execute as @s[tag=!game,tag=e4,tag=e4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:water_bucket"}]}] run function shop:buttons/kipa/active
#Effekt nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!e4,tag=e4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:water_bucket"}]}] run function shop:buttons/kipa/e4/inactive
#Effekt kaufen.
execute as @s[tag=!game,scores={Coins=500..},tag=!e4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:water_bucket"}]}] run function shop:buttons/kipa/e4/buy
#zu wenig Coins für Waffe
execute as @s[tag=!game,scores={Coins=..499},tag=!e4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:water_bucket"}]}] run function shop:buttons/kipa/lesscoins
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#Effekt 5
#Effekt bereits ausgewählt
execute as @s[tag=!game,tag=e5,tag=e5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:dragon_breath"}]}] run function shop:buttons/kipa/active
#Effekt nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!e5,tag=e5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:dragon_breath"}]}] run function shop:buttons/kipa/e5/inactive
#Effekt kaufen.
execute as @s[tag=!game,scores={Coins=1500..},tag=!e5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:dragon_breath"}]}] run function shop:buttons/kipa/e5/buy
#zu wenig Coins für Waffe
execute as @s[tag=!game,scores={Coins=..1499},tag=!e5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:dragon_breath"}]}] run function shop:buttons/kipa/lesscoins
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#Effekt 6
#Effekt bereits ausgewählt
execute as @s[tag=!game,tag=e6,tag=e6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:fire_charge"}]}] run function shop:buttons/kipa/active
#Effekt nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!e6,tag=e6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:fire_charge"}]}] run function shop:buttons/kipa/e6/inactive
#Effekt kaufen.
execute as @s[tag=!game,scores={Coins=1500..},tag=!e6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:fire_charge"}]}] run function shop:buttons/kipa/e6/buy
#zu wenig Coins für Waffe
execute as @s[tag=!game,scores={Coins=..1499},tag=!e6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:fire_charge"}]}] run function shop:buttons/kipa/lesscoins
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:9b, id:"minecraft:red_stained_glass_pane"}]}] run function shop:shop/initshop