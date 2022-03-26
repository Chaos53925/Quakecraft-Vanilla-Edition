
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:16b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/deso/initdeso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:17b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/deso/initdeso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:18b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/deso/initdeso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:19b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/deso/initdeso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:20b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/deso/initdeso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:21b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/deso/initdeso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:22b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/deso/initdeso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:23b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/deso/initdeso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:24b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/deso/initdeso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:25b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/deso/initdeso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:26b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/deso/initdeso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:27b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/deso/initdeso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:28b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/deso/initdeso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:29b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/deso/initdeso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:30b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/deso/initdeso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:31b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/deso/initdeso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:32b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/deso/initdeso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:33b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/deso/initdeso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:34b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/deso/initdeso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:35b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/deso/initdeso
item replace entity @s[tag=!game] hotbar.0 with air
item replace entity @s[tag=!game] hotbar.1 with air
item replace entity @s[tag=!game] hotbar.2 with air
item replace entity @s[tag=!game] hotbar.3 with air
item replace entity @s[tag=!game] hotbar.4 with air
item replace entity @s[tag=!game] hotbar.5 with air
item replace entity @s[tag=!game] hotbar.6 with air
item replace entity @s[tag=!game] hotbar.7 with air

#Todeseffekte
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#Sound 1
#Sound bereits ausgewählt
execute as @s[tag=!game,tag=s1] unless entity @s[nbt={Inventory:[{Slot:10b, id:"minecraft:blaze_rod"}]}] run function custom:shop/artikel/deso/active
#Sound nicht ausgewählt.
execute as @s[tag=!game,tag=!s1] unless entity @s[nbt={Inventory:[{Slot:10b, id:"minecraft:blaze_rod"}]}] run function custom:shop/artikel/deso/s1/inactive
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#Sound 2
#Sound bereits ausgewählt
execute as @s[tag=!game,tag=s2,tag=s2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:anvil"}]}] run function custom:shop/artikel/deso/active
#Sound nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!s2,tag=s2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:anvil"}]}] run function custom:shop/artikel/deso/s2/inactive
#Sound kaufen.
execute as @s[tag=!game,scores={Coins=5000..},tag=!s2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:anvil"}]}] run function custom:shop/artikel/deso/s2/buy
#zu wenig Coins für Waffe
execute as @s[tag=!game,scores={Coins=..4999},tag=!s2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:anvil"}]}] run function custom:shop/artikel/deso/lesscoins
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#Sound 3
#Sound bereits ausgewählt
execute as @s[tag=!game,tag=s3,tag=s3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:ender_pearl"}]}] run function custom:shop/artikel/deso/active
#Sound nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!s3,tag=s3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:ender_pearl"}]}] run function custom:shop/artikel/deso/s3/inactive
#Sound kaufen.
execute as @s[tag=!game,scores={Coins=5000..},tag=!s3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:ender_pearl"}]}] run function custom:shop/artikel/deso/s3/buy
#zu wenig Coins für Waffe
execute as @s[tag=!game,scores={Coins=..4999},tag=!s3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:ender_pearl"}]}] run function custom:shop/artikel/deso/lesscoins
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#Sound 4
#Sound bereits ausgewählt
execute as @s[tag=!game,tag=s4,tag=s4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:iron_block"}]}] run function custom:shop/artikel/deso/active
#Sound nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!s4,tag=s4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:iron_block"}]}] run function custom:shop/artikel/deso/s4/inactive
#Sound kaufen.
execute as @s[tag=!game,scores={Coins=5000..},tag=!s4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:iron_block"}]}] run function custom:shop/artikel/deso/s4/buy
#zu wenig Coins für Waffe
execute as @s[tag=!game,scores={Coins=..4999},tag=!s4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:iron_block"}]}] run function custom:shop/artikel/deso/lesscoins
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#Sound 5
#Sound bereits ausgewählt
execute as @s[tag=!game,tag=s5,tag=s5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:wither_skeleton_skull"}]}] run function custom:shop/artikel/deso/active
#Sound nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!s5,tag=s5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:wither_skeleton_skull"}]}] run function custom:shop/artikel/deso/s5/inactive
#Sound kaufen.
execute as @s[tag=!game,scores={Coins=5000..},tag=!s5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:wither_skeleton_skull"}]}] run function custom:shop/artikel/deso/s5/buy
#zu wenig Coins für Waffe
execute as @s[tag=!game,scores={Coins=..4999},tag=!s5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:wither_skeleton_skull"}]}] run function custom:shop/artikel/deso/lesscoins
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#Sound 6
#Sound bereits ausgewählt
execute as @s[tag=!game,tag=s6,tag=s6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:dragon_head"}]}] run function custom:shop/artikel/deso/active
#Sound nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!s6,tag=s6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:dragon_head"}]}] run function custom:shop/artikel/deso/s6/inactive
#Sound kaufen.
execute as @s[tag=!game,scores={Coins=5000..},tag=!s6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:dragon_head"}]}] run function custom:shop/artikel/deso/s6/buy
#zu wenig Coins für Waffe
execute as @s[tag=!game,scores={Coins=..4999},tag=!s6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:dragon_head"}]}] run function custom:shop/artikel/deso/lesscoins

execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:9b, id:"minecraft:red_stained_glass_pane"}]}] run function custom:shop/shop/initshop
