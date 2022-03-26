
execute as @s[tag=!game,tag=set] unless entity @s[nbt={Inventory:[{Slot:10b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/set/initset
execute as @s[tag=!game,tag=set] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/set/initset
execute as @s[tag=!game,tag=set] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/set/initset
execute as @s[tag=!game,tag=set] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/set/initset
execute as @s[tag=!game,tag=set] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/set/initset
execute as @s[tag=!game,tag=set] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/set/initset
execute as @s[tag=!game,tag=set] unless entity @s[nbt={Inventory:[{Slot:16b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/set/initset
execute as @s[tag=!game,tag=set] unless entity @s[nbt={Inventory:[{Slot:17b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/set/initset
execute as @s[tag=!game,tag=set] unless entity @s[nbt={Inventory:[{Slot:18b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/set/initset
execute as @s[tag=!game,tag=set] unless entity @s[nbt={Inventory:[{Slot:19b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/set/initset
execute as @s[tag=!game,tag=set] unless entity @s[nbt={Inventory:[{Slot:20b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/set/initset
execute as @s[tag=!game,tag=set] unless entity @s[nbt={Inventory:[{Slot:22b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/set/initset
execute as @s[tag=!game,tag=set] unless entity @s[nbt={Inventory:[{Slot:24b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/set/initset
execute as @s[tag=!game,tag=set] unless entity @s[nbt={Inventory:[{Slot:25b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/set/initset
execute as @s[tag=!game,tag=set] unless entity @s[nbt={Inventory:[{Slot:26b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/set/initset
execute as @s[tag=!game,tag=set] unless entity @s[nbt={Inventory:[{Slot:27b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/set/initset
execute as @s[tag=!game,tag=set] unless entity @s[nbt={Inventory:[{Slot:28b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/set/initset
execute as @s[tag=!game,tag=set] unless entity @s[nbt={Inventory:[{Slot:29b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/set/initset
execute as @s[tag=!game,tag=set] unless entity @s[nbt={Inventory:[{Slot:30b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/set/initset
execute as @s[tag=!game,tag=set] unless entity @s[nbt={Inventory:[{Slot:31b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/set/initset
execute as @s[tag=!game,tag=set] unless entity @s[nbt={Inventory:[{Slot:32b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/set/initset
execute as @s[tag=!game,tag=set] unless entity @s[nbt={Inventory:[{Slot:33b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/set/initset
execute as @s[tag=!game,tag=set] unless entity @s[nbt={Inventory:[{Slot:34b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/set/initset
execute as @s[tag=!game,tag=set] unless entity @s[nbt={Inventory:[{Slot:35b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/set/initset
item replace entity @s[tag=!game,tag=set] hotbar.0 with air
item replace entity @s[tag=!game,tag=set] hotbar.1 with air
item replace entity @s[tag=!game,tag=set] hotbar.2 with air
item replace entity @s[tag=!game,tag=set] hotbar.3 with air
item replace entity @s[tag=!game,tag=set] hotbar.4 with air
item replace entity @s[tag=!game,tag=set] hotbar.5 with air
item replace entity @s[tag=!game,tag=set] hotbar.6 with air
item replace entity @s[tag=!game,tag=set] hotbar.7 with air
execute as @s[tag=!game,tag=set,tag=man] unless entity @s[nbt={Inventory:[{Slot:21b, id:"minecraft:redstone"}]}] run function custom:shop/artikel/set/immuneon
execute as @s[tag=!game,tag=set,tag=!man] unless entity @s[nbt={Inventory:[{Slot:21b, id:"minecraft:slime_ball"}]}] run function custom:shop/artikel/set/immuneoff
execute as @s[tag=!game,tag=set,tag=soundsoff] unless entity @s[nbt={Inventory:[{Slot:23b, id:"minecraft:redstone"}]}] run function custom:shop/artikel/set/soundon
execute as @s[tag=!game,tag=set,tag=!soundsoff] unless entity @s[nbt={Inventory:[{Slot:23b, id:"minecraft:slime_ball"}]}] run function custom:shop/artikel/set/soundoff
execute as @s[tag=!game,tag=set] unless entity @s[nbt={Inventory:[{Slot:9b, id:"minecraft:red_stained_glass_pane"}]}] run function custom:shop/main/initmain
