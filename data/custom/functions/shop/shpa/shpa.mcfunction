
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
#partikel
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#partikel 1
#partikel bereits ausgewählt
execute as @s[tag=!game,tag=p1] unless entity @s[nbt={Inventory:[{Slot:10b, id:"minecraft:firework_rocket"}]}] run function custom:shop/artikel/shpa/active
#partikel nicht ausgewählt.
execute as @s[tag=!game,tag=!p1] unless entity @s[nbt={Inventory:[{Slot:10b, id:"minecraft:firework_rocket"}]}] run function custom:shop/artikel/shpa/p1/inactive
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#partikel 2
#partikel bereits ausgewählt
execute as @s[tag=!game,tag=p2,tag=p2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:heart_of_the_sea"}]}] run function custom:shop/artikel/shpa/active
#partikel nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!p2,tag=p2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:heart_of_the_sea"}]}] run function custom:shop/artikel/shpa/p2/inactive
#partikel kaufen.
execute as @s[tag=!game,scores={Coins=5000..},tag=!p2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:heart_of_the_sea"}]}] run function custom:shop/artikel/shpa/p2/buy
#zu wenig Coins für partikel
execute as @s[tag=!game,scores={Coins=..4999},tag=!p2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:heart_of_the_sea"}]}] run function custom:shop/artikel/shpa/lesscoins
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#partikel 3
#partikel bereits ausgewählt
execute as @s[tag=!game,tag=p3,tag=p3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:composter"}]}] run function custom:shop/artikel/shpa/active
#partikel nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!p3,tag=p3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:composter"}]}] run function custom:shop/artikel/shpa/p3/inactive
#partikel kaufen.
execute as @s[tag=!game,scores={Coins=5000..},tag=!p3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:composter"}]}] run function custom:shop/artikel/shpa/p3/buy
#zu wenig Coins für partikel
execute as @s[tag=!game,scores={Coins=..4999},tag=!p3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:composter"}]}] run function custom:shop/artikel/shpa/lesscoins
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#partikel 4
#partikel bereits ausgewählt
execute as @s[tag=!game,tag=p4,tag=p4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:diamond_sword"}]}] run function custom:shop/artikel/shpa/active
#partikel nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!p4,tag=p4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:diamond_sword"}]}] run function custom:shop/artikel/shpa/p4/inactive
#partikel kaufen.
execute as @s[tag=!game,scores={Coins=5000..},tag=!p4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:diamond_sword"}]}] run function custom:shop/artikel/shpa/p4/buy
#zu wenig Coins für partikel
execute as @s[tag=!game,scores={Coins=..4999},tag=!p4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:diamond_sword"}]}] run function custom:shop/artikel/shpa/lesscoins
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#partikel 5
#partikel bereits ausgewählt
execute as @s[tag=!game,tag=p5,tag=p5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:enchanted_book"}]}] run function custom:shop/artikel/shpa/active
#partikel nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!p5,tag=p5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:enchanted_book"}]}] run function custom:shop/artikel/shpa/p5/inactive
#partikel kaufen.
execute as @s[tag=!game,scores={Coins=5000..},tag=!p5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:enchanted_book"}]}] run function custom:shop/artikel/shpa/p5/buy
#zu wenig Coins für partikel
execute as @s[tag=!game,scores={Coins=..4999},tag=!p5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:enchanted_book"}]}] run function custom:shop/artikel/shpa/lesscoins
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#partikel 6
#partikel bereits ausgewählt
execute as @s[tag=!game,tag=p6,tag=p6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:soul_torch"}]}] run function custom:shop/artikel/shpa/active
#partikel nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!p6,tag=p6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:soul_torch"}]}] run function custom:shop/artikel/shpa/p6/inactive
#partikel kaufen.
execute as @s[tag=!game,scores={Coins=5000..},tag=!p6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:soul_torch"}]}] run function custom:shop/artikel/shpa/p6/buy
#zu wenig Coins für partikel
execute as @s[tag=!game,scores={Coins=..4999},tag=!p6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:soul_torch"}]}] run function custom:shop/artikel/shpa/lesscoins

execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:9b, id:"minecraft:red_stained_glass_pane"}]}] run function custom:shop/shop/initshop