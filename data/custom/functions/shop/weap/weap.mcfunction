
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:16b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/weap/initweap
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:17b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/weap/initweap
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:18b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/weap/initweap
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:25b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/weap/initweap
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:26b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/weap/initweap
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:27b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/weap/initweap
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:28b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/weap/initweap
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:29b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/weap/initweap
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:30b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/weap/initweap
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:31b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/weap/initweap
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:32b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/weap/initweap
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:33b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/weap/initweap
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:34b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/weap/initweap
execute as @s[tag=!game] unless entity @s[nbt={Inventory:[{Slot:35b, id:"minecraft:gray_stained_glass_pane"}]}] run function custom:shop/weap/initweap

item replace entity @s[tag=!game] hotbar.0 with air
item replace entity @s[tag=!game] hotbar.1 with air
item replace entity @s[tag=!game] hotbar.2 with air
item replace entity @s[tag=!game] hotbar.3 with air
item replace entity @s[tag=!game] hotbar.4 with air
item replace entity @s[tag=!game] hotbar.5 with air
item replace entity @s[tag=!game] hotbar.6 with air
item replace entity @s[tag=!game] hotbar.7 with air
#Waffen
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#Stufe 1
#waffe bereits ausgewählt
execute as @s[tag=!game,tag=wlv1] unless entity @s[nbt={Inventory:[{Slot:10b, id:"minecraft:wooden_hoe"}]}] run function custom:shop/artikel/weap/active
#waffe nicht ausgewählt.
execute as @s[tag=!game,tag=!wlv1] unless entity @s[nbt={Inventory:[{Slot:10b, id:"minecraft:wooden_hoe"}]}] run function custom:shop/artikel/weap/wlv1/inactive
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#Stufe 2
#waffe bereits ausgewählt
execute as @s[tag=!game,tag=wlv2,tag=wlv2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:stone_hoe"}]}] run function custom:shop/artikel/weap/active
#waffe nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!wlv2,tag=wlv2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:stone_hoe"}]}] run function custom:shop/artikel/weap/wlv2/inactive
#waffe kaufen.
execute as @s[tag=!game,scores={xp=..4},tag=!wlv2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:stone_hoe"}]}] run function custom:shop/artikel/weap/lesslevel
#waffe kaufen.
execute as @s[tag=!game,scores={Coins=1500..,xp=5..},tag=!wlv2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:stone_hoe"}]}] run function custom:shop/artikel/weap/wlv2/buy
#zu wenig Coins für Waffe
execute as @s[tag=!game,scores={Coins=..1499,xp=5..},tag=!wlv2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:stone_hoe"}]}] run function custom:shop/artikel/weap/lesscoins
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#Stufe 3
#waffe bereits ausgewählt
execute as @s[tag=!game,tag=wlv3,tag=wlv3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:iron_hoe"}]}] run function custom:shop/artikel/weap/active
#waffe nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!wlv3,tag=wlv3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:iron_hoe"}]}] run function custom:shop/artikel/weap/wlv3/inactive
#waffe kaufen.
execute as @s[tag=!game,tag=!wlv3b,tag=!wlv2b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:iron_hoe"}]}] run function custom:shop/artikel/weap/noweapon
#waffe kaufen.
execute as @s[tag=!game,scores={xp=..9},tag=!wlv3b,tag=wlv2b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:iron_hoe"}]}] run function custom:shop/artikel/weap/lesslevel
#waffe kaufen.
execute as @s[tag=!game,scores={Coins=2500..,xp=10..},tag=!wlv3b,tag=wlv2b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:iron_hoe"}]}] run function custom:shop/artikel/weap/wlv3/buy
#zu wenig Coins für Waffe
execute as @s[tag=!game,scores={Coins=..2499,xp=10..},tag=!wlv3b,tag=wlv2b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:iron_hoe"}]}] run function custom:shop/artikel/weap/lesscoins
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#Stufe 4
#waffe bereits ausgewählt
execute as @s[tag=!game,tag=wlv4,tag=wlv4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:golden_hoe"}]}] run function custom:shop/artikel/weap/active
#waffe nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!wlv4,tag=wlv4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:golden_hoe"}]}] run function custom:shop/artikel/weap/wlv4/inactive
#waffe kaufen.
execute as @s[tag=!game,tag=!wlv4b,tag=!wlv3b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:golden_hoe"}]}] run function custom:shop/artikel/weap/noweapon
#waffe kaufen.
execute as @s[tag=!game,scores={xp=..14},tag=!wlv4b,tag=wlv3b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:golden_hoe"}]}] run function custom:shop/artikel/weap/lesslevel
#waffe kaufen.
execute as @s[tag=!game,scores={Coins=5000..,xp=15..},tag=!wlv4b,tag=wlv3b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:golden_hoe"}]}] run function custom:shop/artikel/weap/wlv4/buy
#zu wenig Coins für Waffe
execute as @s[tag=!game,scores={Coins=..4999,xp=15..},tag=!wlv4b,tag=wlv3b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:golden_hoe"}]}] run function custom:shop/artikel/weap/lesscoins
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#Stufe 5
#waffe bereits ausgewählt
execute as @s[tag=!game,tag=wlv5,tag=wlv5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:diamond_hoe"}]}] run function custom:shop/artikel/weap/active
#waffe nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!wlv5,tag=wlv5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:diamond_hoe"}]}] run function custom:shop/artikel/weap/wlv5/inactive
#waffe kaufen.
execute as @s[tag=!game,tag=!wlv5b,tag=!wlv4b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:diamond_hoe"}]}] run function custom:shop/artikel/weap/noweapon
#waffe kaufen.
execute as @s[tag=!game,scores={xp=..19},tag=!wlv5b,tag=wlv4b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:diamond_hoe"}]}] run function custom:shop/artikel/weap/lesslevel
#waffe kaufen.
execute as @s[tag=!game,scores={Coins=10000..,xp=20..},tag=!wlv5b,tag=wlv4b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:diamond_hoe"}]}] run function custom:shop/artikel/weap/wlv5/buy
#zu wenig Coins für Waffe
execute as @s[tag=!game,scores={Coins=..9999,xp=20..},tag=!wlv5b,tag=wlv4b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:diamond_hoe"}]}] run function custom:shop/artikel/weap/lesscoins
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#Stufe 6
#waffe bereits ausgewählt
execute as @s[tag=!game,tag=wlv6,tag=wlv6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:netherite_hoe"}]}] run function custom:shop/artikel/weap/active
#waffe nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!wlv6,tag=wlv6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:netherite_hoe"}]}] run function custom:shop/artikel/weap/wlv6/inactive
#waffe kaufen.
execute as @s[tag=!game,tag=!wlv6b,tag=!wlv5b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:netherite_hoe"}]}] run function custom:shop/artikel/weap/noweapon
#waffe kaufen.
execute as @s[tag=!game,scores={xp=..24},tag=!wlv6b,tag=wlv5b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:netherite_hoe"}]}] run function custom:shop/artikel/weap/lesslevel
#waffe kaufen.
execute as @s[tag=!game,scores={Coins=15000..,xp=25..},tag=!wlv6b,tag=wlv5b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:netherite_hoe"}]}] run function custom:shop/artikel/weap/wlv6/buy
#zu wenig Coins für Waffe
execute as @s[tag=!game,scores={Coins=..14999,xp=25..},tag=!wlv6b,tag=wlv5b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:netherite_hoe"}]}] run function custom:shop/artikel/weap/lesscoins
#Waffen
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#Stufe 1
#waffe bereits ausgewählt
execute as @s[tag=!game,tag=slv1,tag=slv1b] unless entity @s[nbt={Inventory:[{Slot:19b, id:"minecraft:wooden_pickaxe"}]}] run function custom:shop/artikel/weap/active
#waffe nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!slv1,tag=slv1b] unless entity @s[nbt={Inventory:[{Slot:19b, id:"minecraft:wooden_pickaxe"}]}] run function custom:shop/artikel/weap/slv1/inactive
#waffe kaufen.
execute as @s[tag=!game,scores={xp=..14},tag=!slv1b] unless entity @s[nbt={Inventory:[{Slot:19b, id:"minecraft:wooden_pickaxe"}]}] run function custom:shop/artikel/weap/lesslevel
#waffe kaufen.
execute as @s[tag=!game,scores={Coins=25000..,xp=15..},tag=!slv1b] unless entity @s[nbt={Inventory:[{Slot:19b, id:"minecraft:wooden_pickaxe"}]}] run function custom:shop/artikel/weap/slv1/buy
#zu wenig Coins für Waffe
execute as @s[tag=!game,scores={Coins=..24999,xp=15..},tag=!slv1b] unless entity @s[nbt={Inventory:[{Slot:19b, id:"minecraft:wooden_pickaxe"}]}] run function custom:shop/artikel/weap/lesscoins
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#Stufe 2
#waffe bereits ausgewählt
execute as @s[tag=!game,tag=slv2,tag=slv2b] unless entity @s[nbt={Inventory:[{Slot:20b, id:"minecraft:stone_pickaxe"}]}] run function custom:shop/artikel/weap/active
#waffe nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!slv2,tag=slv2b] unless entity @s[nbt={Inventory:[{Slot:20b, id:"minecraft:stone_pickaxe"}]}] run function custom:shop/artikel/weap/slv2/inactive
#waffe kaufen.
execute as @s[tag=!game,tag=!slv2b,tag=!slv1b] unless entity @s[nbt={Inventory:[{Slot:20b, id:"minecraft:stone_pickaxe"}]}] run function custom:shop/artikel/weap/noweapon
#waffe kaufen.
execute as @s[tag=!game,scores={xp=..19},tag=!slv2b,tag=slv1b] unless entity @s[nbt={Inventory:[{Slot:20b, id:"minecraft:stone_pickaxe"}]}] run function custom:shop/artikel/weap/lesslevel
#waffe kaufen.
execute as @s[tag=!game,scores={Coins=30000..,xp=20..},tag=!slv2b,tag=slv1b] unless entity @s[nbt={Inventory:[{Slot:20b, id:"minecraft:stone_pickaxe"}]}] run function custom:shop/artikel/weap/slv2/buy
#zu wenig Coins für Waffe
execute as @s[tag=!game,scores={Coins=..29999,xp=20..},tag=!slv2b,tag=slv1b] unless entity @s[nbt={Inventory:[{Slot:20b, id:"minecraft:stone_pickaxe"}]}] run function custom:shop/artikel/weap/lesscoins
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#Stufe 3
#waffe bereits ausgewählt
execute as @s[tag=!game,tag=slv3,tag=slv3b] unless entity @s[nbt={Inventory:[{Slot:21b, id:"minecraft:iron_pickaxe"}]}] run function custom:shop/artikel/weap/active
#waffe nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!slv3,tag=slv3b] unless entity @s[nbt={Inventory:[{Slot:21b, id:"minecraft:iron_pickaxe"}]}] run function custom:shop/artikel/weap/slv3/inactive
#waffe kaufen.
execute as @s[tag=!game,tag=!slv3b,tag=!slv2b] unless entity @s[nbt={Inventory:[{Slot:21b, id:"minecraft:iron_pickaxe"}]}] run function custom:shop/artikel/weap/noweapon
#waffe kaufen.
execute as @s[tag=!game,scores={xp=..25},tag=!slv3b,tag=slv2b] unless entity @s[nbt={Inventory:[{Slot:21b, id:"minecraft:iron_pickaxe"}]}] run function custom:shop/artikel/weap/lesslevel
#waffe kaufen.
execute as @s[tag=!game,scores={Coins=35000..,xp=26..},tag=!slv3b,tag=slv2b] unless entity @s[nbt={Inventory:[{Slot:21b, id:"minecraft:iron_pickaxe"}]}] run function custom:shop/artikel/weap/slv3/buy
#zu wenig Coins für Waffe
execute as @s[tag=!game,scores={Coins=..34999,xp=26..},tag=!slv3b,tag=slv2b] unless entity @s[nbt={Inventory:[{Slot:21b, id:"minecraft:iron_pickaxe"}]}] run function custom:shop/artikel/weap/lesscoins
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#Stufe 4
#waffe bereits ausgewählt
execute as @s[tag=!game,tag=slv4,tag=slv4b] unless entity @s[nbt={Inventory:[{Slot:22b, id:"minecraft:golden_pickaxe"}]}] run function custom:shop/artikel/weap/active
#waffe nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!slv4,tag=slv4b] unless entity @s[nbt={Inventory:[{Slot:22b, id:"minecraft:golden_pickaxe"}]}] run function custom:shop/artikel/weap/slv4/inactive
#waffe kaufen.
execute as @s[tag=!game,tag=!slv4b,tag=!slv3b] unless entity @s[nbt={Inventory:[{Slot:22b, id:"minecraft:golden_pickaxe"}]}] run function custom:shop/artikel/weap/noweapon
#waffe kaufen.
execute as @s[tag=!game,scores={xp=..32},tag=!slv4b,tag=slv3b] unless entity @s[nbt={Inventory:[{Slot:22b, id:"minecraft:golden_pickaxe"}]}] run function custom:shop/artikel/weap/lesslevel
#waffe kaufen.
execute as @s[tag=!game,scores={Coins=40000..,xp=33..},tag=!slv4b,tag=slv3b] unless entity @s[nbt={Inventory:[{Slot:22b, id:"minecraft:golden_pickaxe"}]}] run function custom:shop/artikel/weap/slv4/buy
#zu wenig Coins für Waffe
execute as @s[tag=!game,scores={Coins=..39999,xp=33..},tag=!slv4b,tag=slv3b] unless entity @s[nbt={Inventory:[{Slot:22b, id:"minecraft:golden_pickaxe"}]}] run function custom:shop/artikel/weap/lesscoins
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#Stufe 5
#waffe bereits ausgewählt
execute as @s[tag=!game,tag=slv5,tag=slv5b] unless entity @s[nbt={Inventory:[{Slot:23b, id:"minecraft:diamond_pickaxe"}]}] run function custom:shop/artikel/weap/active
#waffe nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!slv5,tag=slv5b] unless entity @s[nbt={Inventory:[{Slot:23b, id:"minecraft:diamond_pickaxe"}]}] run function custom:shop/artikel/weap/slv5/inactive
#waffe kaufen.
execute as @s[tag=!game,tag=!slv5b,tag=!slv4b] unless entity @s[nbt={Inventory:[{Slot:23b, id:"minecraft:diamond_pickaxe"}]}] run function custom:shop/artikel/weap/noweapon
#waffe kaufen.
execute as @s[tag=!game,scores={xp=..40},tag=!slv5b,tag=slv4b] unless entity @s[nbt={Inventory:[{Slot:23b, id:"minecraft:diamond_pickaxe"}]}] run function custom:shop/artikel/weap/lesslevel
#waffe kaufen.
execute as @s[tag=!game,scores={Coins=45000..,xp=41..},tag=!slv5b,tag=slv4b] unless entity @s[nbt={Inventory:[{Slot:23b, id:"minecraft:diamond_pickaxe"}]}] run function custom:shop/artikel/weap/slv5/buy
#zu wenig Coins für Waffe
execute as @s[tag=!game,scores={Coins=..44999,xp=41..},tag=!slv5b,tag=slv4b] unless entity @s[nbt={Inventory:[{Slot:23b, id:"minecraft:diamond_pickaxe"}]}] run function custom:shop/artikel/weap/lesscoins
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#Stufe 6
#waffe bereits ausgewählt
execute as @s[tag=!game,tag=slv6,tag=slv6b] unless entity @s[nbt={Inventory:[{Slot:24b, id:"minecraft:netherite_pickaxe"}]}] run function custom:shop/artikel/weap/active
#waffe nicht ausgewählt aber gekauft
execute as @s[tag=!game,tag=!slv6,tag=slv6b] unless entity @s[nbt={Inventory:[{Slot:24b, id:"minecraft:netherite_pickaxe"}]}] run function custom:shop/artikel/weap/slv6/inactive
#waffe kaufen.
execute as @s[tag=!game,tag=!slv6b,tag=!slv5b] unless entity @s[nbt={Inventory:[{Slot:24b, id:"minecraft:netherite_pickaxe"}]}] run function custom:shop/artikel/weap/noweapon
#waffe kaufen.
execute as @s[tag=!game,scores={xp=..49},tag=!slv6b,tag=slv5b] unless entity @s[nbt={Inventory:[{Slot:24b, id:"minecraft:netherite_pickaxe"}]}] run function custom:shop/artikel/weap/lesslevel
#waffe kaufen.
execute as @s[tag=!game,scores={Coins=50000..,xp=50..},tag=!slv6b,tag=slv5b] unless entity @s[nbt={Inventory:[{Slot:24b, id:"minecraft:netherite_pickaxe"}]}] run function custom:shop/artikel/weap/slv6/buy
#zu wenig Coins für Waffe
execute as @s[tag=!game,scores={Coins=..49999,xp=50..},tag=!slv6b,tag=slv5b] unless entity @s[nbt={Inventory:[{Slot:24b, id:"minecraft:netherite_pickaxe"}]}] run function custom:shop/artikel/weap/lesscoins
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
execute as @s[tag=!game,tag=weap] unless entity @s[nbt={Inventory:[{Slot:9b, id:"minecraft:red_stained_glass_pane"}]}] run function custom:shop/shop/initshop