
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:16b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shso/initshso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:17b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shso/initshso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:18b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shso/initshso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:19b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shso/initshso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:20b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shso/initshso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:21b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shso/initshso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:22b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shso/initshso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:23b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shso/initshso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:24b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shso/initshso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:25b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shso/initshso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:26b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shso/initshso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:27b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shso/initshso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:28b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shso/initshso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:29b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shso/initshso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:30b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shso/initshso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:31b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shso/initshso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:32b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shso/initshso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:33b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shso/initshso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:34b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shso/initshso
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:35b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/shso/initshso
item replace entity @s[tag=!game] hotbar.0 with air
item replace entity @s[tag=!game] hotbar.1 with air
item replace entity @s[tag=!game] hotbar.2 with air
item replace entity @s[tag=!game] hotbar.3 with air
item replace entity @s[tag=!game] hotbar.4 with air
item replace entity @s[tag=!game] hotbar.5 with air
item replace entity @s[tag=!game] hotbar.6 with air
item replace entity @s[tag=!game] hotbar.7 with air

#Sound
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#Sound 1
#sound bereits ausgewählt
execute as @s[tag=!game,tag=r1] unless entity @s[nbt={Inventory:[{Slot:10b, id:"minecraft:bone_meal"}]}] run function custom:shop/buttons/shso/active
#sound nicht ausgewählt.
execute as @s[tag=!game,tag=!r1] unless entity @s[nbt={Inventory:[{Slot:10b, id:"minecraft:bone_meal"}]}] run function custom:shop/buttons/shso/r1/inactive
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#Sound 2
#sound bereits ausgewählt
execute as @s[tag=!game,tag=r2,tag=r2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:bow"}]}] run function custom:shop/buttons/shso/active
#sound nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!r2,tag=r2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:bow"}]}] run function custom:shop/buttons/shso/r2/inactive
#sound kaufen.
execute as @s[tag=!game,scores={Coins=5000..},tag=!r2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:bow"}]}] run function custom:shop/buttons/shso/r2/buy
#zu wenig Coins für Sound
execute as @s[tag=!game,scores={Coins=..4999},tag=!r2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:bow"}]}] run function custom:shop/buttons/shso/lesscoins
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#Sound 3
#sound bereits ausgewählt
execute as @s[tag=!game,tag=r3,tag=r3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:blaze_powder"}]}] run function custom:shop/buttons/shso/active
#sound nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!r3,tag=r3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:blaze_powder"}]}] run function custom:shop/buttons/shso/r3/inactive
#sound kaufen.
execute as @s[tag=!game,scores={Coins=5000..},tag=!r3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:blaze_powder"}]}] run function custom:shop/buttons/shso/r3/buy
#zu wenig Coins für Sound
execute as @s[tag=!game,scores={Coins=..4999},tag=!r3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:blaze_powder"}]}] run function custom:shop/buttons/shso/lesscoins
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#Sound 4
#sound bereits ausgewählt
execute as @s[tag=!game,tag=r4,tag=r4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:firework_star"}]}] run function custom:shop/buttons/shso/active
#sound nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!r4,tag=r4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:firework_star"}]}] run function custom:shop/buttons/shso/r4/inactive
#sound kaufen.
execute as @s[tag=!game,scores={Coins=5000..},tag=!r4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:firework_star"}]}] run function custom:shop/buttons/shso/r4/buy
#zu wenig Coins für Sound
execute as @s[tag=!game,scores={Coins=..4999},tag=!r4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:firework_star"}]}] run function custom:shop/buttons/shso/lesscoins
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#Sound 5
#sound bereits ausgewählt
execute as @s[tag=!game,tag=r5,tag=r5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:tnt"}]}] run function custom:shop/buttons/shso/active
#sound nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!r5,tag=r5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:tnt"}]}] run function custom:shop/buttons/shso/r5/inactive
#sound kaufen.
execute as @s[tag=!game,scores={Coins=5000..},tag=!r5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:tnt"}]}] run function custom:shop/buttons/shso/r5/buy
#zu wenig Coins für Sound
execute as @s[tag=!game,scores={Coins=..4999},tag=!r5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:tnt"}]}] run function custom:shop/buttons/shso/lesscoins
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#Sound 6
#sound bereits ausgewählt
execute as @s[tag=!game,tag=r6,tag=r6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:magma_cream"}]}] run function custom:shop/buttons/shso/active
#sound nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!r6,tag=r6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:magma_cream"}]}] run function custom:shop/buttons/shso/r6/inactive
#sound kaufen.
execute as @s[tag=!game,scores={Coins=5000..},tag=!r6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:magma_cream"}]}] run function custom:shop/buttons/shso/r6/buy
#zu wenig Coins für Sound
execute as @s[tag=!game,scores={Coins=..4999},tag=!r6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:magma_cream"}]}] run function custom:shop/buttons/shso/lesscoins
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:9b, id:"minecraft:red_stained_glass_pane"}]}] run function custom:shop/shop/initshop