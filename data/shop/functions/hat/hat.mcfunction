
execute as @s[tag=!game,tag=hat] unless entity @s[nbt={Inventory:[{Slot:17b, id:"minecraft:gray_stained_glass_pane"}]}] run function shop:hat/inithat
execute as @s[tag=!game,tag=hat] unless entity @s[nbt={Inventory:[{Slot:18b, id:"minecraft:gray_stained_glass_pane"}]}] run function shop:hat/inithat
execute as @s[tag=!game,tag=hat] unless entity @s[nbt={Inventory:[{Slot:23b, id:"minecraft:gray_stained_glass_pane"}]}] run function shop:hat/inithat
execute as @s[tag=!game,tag=hat] unless entity @s[nbt={Inventory:[{Slot:24b, id:"minecraft:gray_stained_glass_pane"}]}] run function shop:hat/inithat
execute as @s[tag=!game,tag=hat] unless entity @s[nbt={Inventory:[{Slot:25b, id:"minecraft:gray_stained_glass_pane"}]}] run function shop:hat/inithat
execute as @s[tag=!game,tag=hat] unless entity @s[nbt={Inventory:[{Slot:26b, id:"minecraft:gray_stained_glass_pane"}]}] run function shop:hat/inithat
execute as @s[tag=!game,tag=hat] unless entity @s[nbt={Inventory:[{Slot:27b, id:"minecraft:gray_stained_glass_pane"}]}] run function shop:hat/inithat
execute as @s[tag=!game,tag=hat] unless entity @s[nbt={Inventory:[{Slot:30b, id:"minecraft:gray_stained_glass_pane"}]}] run function shop:hat/inithat
execute as @s[tag=!game,tag=hat] unless entity @s[nbt={Inventory:[{Slot:31b, id:"minecraft:gray_stained_glass_pane"}]}] run function shop:hat/inithat
execute as @s[tag=!game,tag=hat] unless entity @s[nbt={Inventory:[{Slot:32b, id:"minecraft:gray_stained_glass_pane"}]}] run function shop:hat/inithat
execute as @s[tag=!game,tag=hat] unless entity @s[nbt={Inventory:[{Slot:33b, id:"minecraft:gray_stained_glass_pane"}]}] run function shop:hat/inithat
execute as @s[tag=!game,tag=hat] unless entity @s[nbt={Inventory:[{Slot:34b, id:"minecraft:gray_stained_glass_pane"}]}] run function shop:hat/inithat
execute as @s[tag=!game,tag=hat] unless entity @s[nbt={Inventory:[{Slot:35b, id:"minecraft:gray_stained_glass_pane"}]}] run function shop:hat/inithat
item replace entity @s[tag=!game,tag=hat] hotbar.0 with air
item replace entity @s[tag=!game,tag=hat] hotbar.1 with air
item replace entity @s[tag=!game,tag=hat] hotbar.2 with air
item replace entity @s[tag=!game,tag=hat] hotbar.3 with air
item replace entity @s[tag=!game,tag=hat] hotbar.4 with air
item replace entity @s[tag=!game,tag=hat] hotbar.5 with air
item replace entity @s[tag=!game,tag=hat] hotbar.6 with air
item replace entity @s[tag=!game,tag=hat] hotbar.7 with air
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#pbuttons 1
#pbuttons bereits ausgewählt
execute as @s[tag=!game,tag=hat0] unless entity @s[nbt={Inventory:[{Slot:10b, id:"minecraft:barrier"}]}] run function shop:buttons/hat/active
#pbuttons nicht ausgewählt.
execute as @s[tag=!game,tag=!hat0] unless entity @s[nbt={Inventory:[{Slot:10b, id:"minecraft:barrier"}]}] run function shop:buttons/hat/hat0/inactive
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#pbuttons 2
#pbuttons bereits ausgewählt
execute as @s[tag=!game,tag=hat1,tag=hat1b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:glass"}]}] run function shop:buttons/hat/active
#pbuttons nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!hat1,tag=hat1b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:glass"}]}] run function shop:buttons/hat/hat1/inactive
#pbuttons kaufen.
execute as @s[tag=!game,scores={Coins=1000..},tag=!hat1b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:glass"}]}] run function shop:buttons/hat/hat1/buy
#zu wenig Coins für pbuttons
execute as @s[tag=!game,scores={Coins=..999},tag=!hat1b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:glass"}]}] run function shop:buttons/hat/lesscoins
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#pbuttons 2
#pbuttons bereits ausgewählt
execute as @s[tag=!game,tag=hat4,tag=hat4b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:redstone_block"}]}] run function shop:artike/hat/active
#pbuttons nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!hat4,tag=hat4b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:redstone_block"}]}] run function shop:buttons/hat/hat4/inactive
#pbuttons kaufen.
execute as @s[tag=!game,scores={Coins=1000..},tag=!hat4b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:redstone_block"}]}] run function shop:buttons/hat/hat4/buy
#zu wenig Coins für pbuttons
execute as @s[tag=!game,scores={Coins=..999},tag=!hat4b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:redstone_block"}]}] run function shop:buttons/hat/lesscoins
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#pbuttons 2
#pbuttons bereits ausgewählt
execute as @s[tag=!game,tag=hat9,tag=hat9b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:target"}]}] run function shop:buttons/hat/active
#pbuttons nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!hat9,tag=hat9b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:target"}]}] run function shop:buttons/hat/hat9/inactive
#pbuttons kaufen.
execute as @s[tag=!game,scores={Coins=1000..},tag=!hat9b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:target"}]}] run function shop:buttons/hat/hat9/buy
#zu wenig Coins für pbuttons
execute as @s[tag=!game,scores={Coins=..999},tag=!hat9b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:target"}]}] run function shop:buttons/hat/lesscoins
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#pbuttons 2
#pbuttons bereits ausgewählt
execute as @s[tag=!game,tag=hat10,tag=hat10b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:tnt"}]}] run function shop:buttons/hat/active
#pbuttons nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!hat10,tag=hat10b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:tnt"}]}] run function shop:buttons/hat/hat10/inactive
#pbuttons kaufen.
execute as @s[tag=!game,scores={Coins=1000..},tag=!hat10b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:tnt"}]}] run function shop:buttons/hat/hat10/buy
#zu wenig Coins für pbuttons
execute as @s[tag=!game,scores={Coins=..999},tag=!hat10b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:tnt"}]}] run function shop:buttons/hat/lesscoins
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#pbuttons 2
#pbuttons bereits ausgewählt
execute as @s[tag=!game,tag=hat11,tag=hat11b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:slime_block"}]}] run function shop:buttons/hat/active
#pbuttons nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!hat11,tag=hat11b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:slime_block"}]}] run function shop:buttons/hat/hat11/inactive
#pbuttons kaufen.
execute as @s[tag=!game,scores={Coins=1000..},tag=!hat11b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:slime_block"}]}] run function shop:buttons/hat/hat11/buy
#zu wenig Coins für pbuttons
execute as @s[tag=!game,scores={Coins=..999},tag=!hat11b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:slime_block"}]}] run function shop:buttons/hat/lesscoins

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#pbuttons 2
#pbuttons bereits ausgewählt
execute as @s[tag=!game,tag=hat12,tag=hat12b] unless entity @s[nbt={Inventory:[{Slot:16b, id:"minecraft:observer"}]}] run function shop:buttons/hat/active
#pbuttons nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!hat12,tag=hat12b] unless entity @s[nbt={Inventory:[{Slot:16b, id:"minecraft:observer"}]}] run function shop:buttons/hat/hat12/inactive
#pbuttons kaufen.
execute as @s[tag=!game,scores={Coins=1000..},tag=!hat12b] unless entity @s[nbt={Inventory:[{Slot:16b, id:"minecraft:observer"}]}] run function shop:buttons/hat/hat12/buy
#zu wenig Coins für pbuttons
execute as @s[tag=!game,scores={Coins=..999},tag=!hat12b] unless entity @s[nbt={Inventory:[{Slot:16b, id:"minecraft:observer"}]}] run function shop:buttons/hat/lesscoins

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#pbuttons 2
#pbuttons bereits ausgewählt
execute as @s[tag=!game,tag=hat2,tag=hat2b] unless entity @s[nbt={Inventory:[{Slot:19b, id:"minecraft:creeper_head"}]}] run function shop:buttons/hat/active
#pbuttons nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!hat2,tag=hat2b] unless entity @s[nbt={Inventory:[{Slot:19b, id:"minecraft:creeper_head"}]}] run function shop:buttons/hat/hat2/inactive
#pbuttons kaufen.
execute as @s[tag=!game,scores={Coins=5000..},tag=!hat2b] unless entity @s[nbt={Inventory:[{Slot:19b, id:"minecraft:creeper_head"}]}] run function shop:buttons/hat/hat2/buy
#zu wenig Coins für pbuttons
execute as @s[tag=!game,scores={Coins=..4999},tag=!hat2b] unless entity @s[nbt={Inventory:[{Slot:19b, id:"minecraft:creeper_head"}]}] run function shop:buttons/hat/lesscoins

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#pbuttons 2
#pbuttons bereits ausgewählt
execute as @s[tag=!game,tag=hat6,tag=hat6b] unless entity @s[nbt={Inventory:[{Slot:20b, id:"minecraft:skeleton_skull"}]}] run function shop:buttons/hat/active
#pbuttons nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!hat6,tag=hat6b] unless entity @s[nbt={Inventory:[{Slot:20b, id:"minecraft:skeleton_skull"}]}] run function shop:buttons/hat/hat6/inactive
#pbuttons kaufen.
execute as @s[tag=!game,scores={Coins=5000..},tag=!hat6b] unless entity @s[nbt={Inventory:[{Slot:20b, id:"minecraft:skeleton_skull"}]}] run function shop:buttons/hat/hat6/buy
#zu wenig Coins für pbuttons
execute as @s[tag=!game,scores={Coins=..4999},tag=!hat6b] unless entity @s[nbt={Inventory:[{Slot:20b, id:"minecraft:skeleton_skull"}]}] run function shop:buttons/hat/lesscoins

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#pbuttons 2
#pbuttons bereits ausgewählt
execute as @s[tag=!game,tag=hat5,tag=hat5b] unless entity @s[nbt={Inventory:[{Slot:21b, id:"minecraft:wither_skeleton_skull"}]}] run function shop:buttons/hat/active
#pbuttons nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!hat5,tag=hat5b] unless entity @s[nbt={Inventory:[{Slot:21b, id:"minecraft:wither_skeleton_skull"}]}] run function shop:buttons/hat/hat5/inactive
#pbuttons kaufen.
execute as @s[tag=!game,scores={Coins=5000..},tag=!hat5b] unless entity @s[nbt={Inventory:[{Slot:21b, id:"minecraft:wither_skeleton_skull"}]}] run function shop:buttons/hat/hat5/buy
#zu wenig Coins für pbuttons
execute as @s[tag=!game,scores={Coins=..4999},tag=!hat5b] unless entity @s[nbt={Inventory:[{Slot:21b, id:"minecraft:wither_skeleton_skull"}]}] run function shop:buttons/hat/lesscoins


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#pbuttons 2
#pbuttons bereits ausgewählt
execute as @s[tag=!game,tag=hat3,tag=hat3b] unless entity @s[nbt={Inventory:[{Slot:22b, id:"minecraft:dragon_head"}]}] run function shop:buttons/hat/active
#pbuttons nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!hat3,tag=hat3b] unless entity @s[nbt={Inventory:[{Slot:22b, id:"minecraft:dragon_head"}]}] run function shop:buttons/hat/hat3/inactive
#pbuttons kaufen.
execute as @s[tag=!game,scores={Coins=5000..},tag=!hat3b] unless entity @s[nbt={Inventory:[{Slot:22b, id:"minecraft:dragon_head"}]}] run function shop:buttons/hat/hat3/buy
#zu wenig Coins für pbuttons
execute as @s[tag=!game,scores={Coins=..4999},tag=!hat3b] unless entity @s[nbt={Inventory:[{Slot:22b, id:"minecraft:dragon_head"}]}] run function shop:buttons/hat/lesscoins

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#pbuttons 2
#pbuttons bereits ausgewählt
execute as @s[tag=!game,tag=hat8,tag=hat8b] unless entity @s[nbt={Inventory:[{Slot:28b, id:"minecraft:end_rod"}]}] run function shop:buttons/hat/active
#pbuttons nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!hat8,tag=hat8b] unless entity @s[nbt={Inventory:[{Slot:28b, id:"minecraft:end_rod"}]}] run function shop:buttons/hat/hat8/inactive
#pbuttons kaufen.
execute as @s[tag=!game,scores={Coins=10000..},tag=!hat8b] unless entity @s[nbt={Inventory:[{Slot:28b, id:"minecraft:end_rod"}]}] run function shop:buttons/hat/hat8/buy
#zu wenig Coins für pbuttons
execute as @s[tag=!game,scores={Coins=..9999},tag=!hat8b] unless entity @s[nbt={Inventory:[{Slot:28b, id:"minecraft:end_rod"}]}] run function shop:buttons/hat/lesscoins


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#pbuttons 2
#pbuttons bereits ausgewählt
execute as @s[tag=!game,tag=hat7,tag=hat7b] unless entity @s[nbt={Inventory:[{Slot:29b, id:"minecraft:lightning_rod"}]}] run function shop:buttons/hat/active
#pbuttons nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!hat7,tag=hat7b] unless entity @s[nbt={Inventory:[{Slot:29b, id:"minecraft:lightning_rod"}]}] run function shop:buttons/hat/hat7/inactive
#pbuttons kaufen.
execute as @s[tag=!game,scores={Coins=10000..},tag=!hat7b] unless entity @s[nbt={Inventory:[{Slot:29b, id:"minecraft:lightning_rod"}]}] run function shop:buttons/hat/hat7/buy
#zu wenig Coins für pbuttons
execute as @s[tag=!game,scores={Coins=..9999},tag=!hat7b] unless entity @s[nbt={Inventory:[{Slot:29b, id:"minecraft:lightning_rod"}]}] run function shop:buttons/hat/lesscoins


execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:9b, id:"minecraft:red_stained_glass_pane"}]}] run function shop:shop/initshop