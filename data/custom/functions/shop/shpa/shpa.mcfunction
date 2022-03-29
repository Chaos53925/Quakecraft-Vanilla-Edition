
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:16b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shpa/initshpa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:17b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shpa/initshpa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:18b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shpa/initshpa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:19b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shpa/initshpa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:20b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shpa/initshpa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:21b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shpa/initshpa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:22b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shpa/initshpa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:23b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shpa/initshpa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:24b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shpa/initshpa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:25b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shpa/initshpa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:26b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shpa/initshpa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:27b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shpa/initshpa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:28b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shpa/initshpa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:29b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shpa/initshpa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:30b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shpa/initshpa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:31b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shpa/initshpa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:32b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shpa/initshpa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:33b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shpa/initshpa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:34b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shpa/initshpa
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:35b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shpa/initshpa
item replace entity @s[tag=!game,tag=shpa] hotbar.0 with air
item replace entity @s[tag=!game,tag=shpa] hotbar.1 with air
item replace entity @s[tag=!game,tag=shpa] hotbar.2 with air
item replace entity @s[tag=!game,tag=shpa] hotbar.3 with air
item replace entity @s[tag=!game,tag=shpa] hotbar.4 with air
item replace entity @s[tag=!game,tag=shpa] hotbar.5 with air
item replace entity @s[tag=!game,tag=shpa] hotbar.6 with air
item replace entity @s[tag=!game,tag=shpa] hotbar.7 with air
#pbuttons
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#pbuttons 1
#pbuttons bereits ausgewählt
execute as @s[tag=!game,tag=p1] unless entity @s[nbt={Inventory:[{Slot:10b, id:"minecraft:firework_rocket"}]}] run function custom:shop/buttons/shpa/active
#pbuttons nicht ausgewählt.
execute as @s[tag=!game,tag=!p1] unless entity @s[nbt={Inventory:[{Slot:10b, id:"minecraft:firework_rocket"}]}] run function custom:shop/buttons/shpa/p1/inactive
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#pbuttons 2
#pbuttons bereits ausgewählt
execute as @s[tag=!game,tag=p2,tag=p2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:heart_of_the_sea"}]}] run function custom:shop/buttons/shpa/active
#pbuttons nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!p2,tag=p2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:heart_of_the_sea"}]}] run function custom:shop/buttons/shpa/p2/inactive
#pbuttons kaufen.
execute as @s[tag=!game,scores={Coins=5000..},tag=!p2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:heart_of_the_sea"}]}] run function custom:shop/buttons/shpa/p2/buy
#zu wenig Coins für pbuttons
execute as @s[tag=!game,scores={Coins=..4999},tag=!p2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:heart_of_the_sea"}]}] run function custom:shop/buttons/lesscoins
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#pbuttons 3
#pbuttons bereits ausgewählt
execute as @s[tag=!game,tag=p3,tag=p3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:composter"}]}] run function custom:shop/buttons/shpa/active
#pbuttons nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!p3,tag=p3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:composter"}]}] run function custom:shop/buttons/shpa/p3/inactive
#pbuttons kaufen.
execute as @s[tag=!game,scores={Coins=5000..},tag=!p3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:composter"}]}] run function custom:shop/buttons/shpa/p3/buy
#zu wenig Coins für pbuttons
execute as @s[tag=!game,scores={Coins=..4999},tag=!p3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:composter"}]}] run function custom:shop/buttons/lesscoins
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#pbuttons 4
#pbuttons bereits ausgewählt
execute as @s[tag=!game,tag=p4,tag=p4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:diamond_sword"}]}] run function custom:shop/buttons/shpa/active
#pbuttons nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!p4,tag=p4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:diamond_sword"}]}] run function custom:shop/buttons/shpa/p4/inactive
#pbuttons kaufen.
execute as @s[tag=!game,scores={Coins=5000..},tag=!p4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:diamond_sword"}]}] run function custom:shop/buttons/shpa/p4/buy
#zu wenig Coins für pbuttons
execute as @s[tag=!game,scores={Coins=..4999},tag=!p4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:diamond_sword"}]}] run function custom:shop/buttons/lesscoins
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#pbuttons 5
#pbuttons bereits ausgewählt
execute as @s[tag=!game,tag=p5,tag=p5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:enchanted_book"}]}] run function custom:shop/buttons/shpa/active
#pbuttons nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!p5,tag=p5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:enchanted_book"}]}] run function custom:shop/buttons/shpa/p5/inactive
#pbuttons kaufen.
execute as @s[tag=!game,scores={Coins=5000..},tag=!p5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:enchanted_book"}]}] run function custom:shop/buttons/shpa/p5/buy
#zu wenig Coins für pbuttons
execute as @s[tag=!game,scores={Coins=..4999},tag=!p5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:enchanted_book"}]}] run function custom:shop/buttons/lesscoins
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#pbuttons 6
#pbuttons bereits ausgewählt
execute as @s[tag=!game,tag=p6,tag=p6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:soul_torch"}]}] run function custom:shop/buttons/shpa/active
#pbuttons nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!p6,tag=p6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:soul_torch"}]}] run function custom:shop/buttons/shpa/p6/inactive
#pbuttons kaufen.
execute as @s[tag=!game,scores={Coins=5000..},tag=!p6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:soul_torch"}]}] run function custom:shop/buttons/shpa/p6/buy
#zu wenig Coins für pbuttons
execute as @s[tag=!game,scores={Coins=..4999},tag=!p6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:soul_torch"}]}] run function custom:shop/buttons/lesscoins

execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:9b, id:"minecraft:red_stained_glass_pane"}]}] run function custom:shop/shop/initshop