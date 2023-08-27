execute as @a[tag=game,tag=!wlv1,tag=!wlv2,tag=!wlv3,tag=!wlv4,tag=!wlv5,tag=!wlv6,tag=!wlv7] unless entity @s[nbt={Inventory:[{Slot:0b, id:"minecraft:carrot_on_a_stick"}]}] run scoreboard players set @s shotgunshots 0
execute as @a[tag=game,tag=!wlv1,tag=!wlv2,tag=!wlv3,tag=!wlv4,tag=!wlv5,tag=!wlv6,tag=!wlv7] unless entity @s[nbt={Inventory:[{Slot:0b, id:"minecraft:carrot_on_a_stick"}]}] run scoreboard players set @s shotguntimer 0

#waffen
item replace entity @s[tag=wlv1] hotbar.0 with minecraft:carrot_on_a_stick{display: {Name: '{"translate":"game.railgun","with":[{"text":"MK.1"}]}'}, CustomModelData: 1}
item replace entity @s[tag=wlv2] hotbar.0 with minecraft:carrot_on_a_stick{display: {Name: '{"translate":"game.railgun","with":[{"text":"MK.2"}]}'}, CustomModelData: 2}
item replace entity @s[tag=wlv3] hotbar.0 with minecraft:carrot_on_a_stick{display: {Name: '{"translate":"game.railgun","with":[{"text":"MK.3"}]}'}, CustomModelData: 3}
item replace entity @s[tag=wlv4] hotbar.0 with minecraft:carrot_on_a_stick{display: {Name: '{"translate":"game.railgun","with":[{"text":"MK.4"}]}'}, CustomModelData: 4}
item replace entity @s[tag=wlv5] hotbar.0 with minecraft:carrot_on_a_stick{display: {Name: '{"translate":"game.railgun","with":[{"text":"MK.5"}]}'}, CustomModelData: 5}
item replace entity @s[tag=wlv6] hotbar.0 with minecraft:carrot_on_a_stick{display: {Name: '{"translate":"game.railgun","with":[{"text":"MK.6"}]}'}, CustomModelData: 6}
item replace entity @s[tag=wlv7] hotbar.0 with minecraft:carrot_on_a_stick{display: {Name: '{"translate":"game.railgun","with":[{"text":"MK.7"}]}'}, CustomModelData: 7}
#waffen
item replace entity @s[tag=slv1] hotbar.0 with minecraft:carrot_on_a_stick{display: {Name: '{"translate":"game.shotgun.","with":[{"text":"MK.1"}]}'}, CustomModelData: 8}
item replace entity @s[tag=slv2] hotbar.0 with minecraft:carrot_on_a_stick{display: {Name: '{"translate":"game.shotgun","with":[{"text":"MK.2"}]}'}, CustomModelData: 9}
item replace entity @s[tag=slv3] hotbar.0 with minecraft:carrot_on_a_stick{display: {Name: '{"translate":"game.shotgun","with":[{"text":"MK.3"}]}'}, CustomModelData: 10}
item replace entity @s[tag=slv4] hotbar.0 with minecraft:carrot_on_a_stick{display: {Name: '{"translate":"game.shotgun","with":[{"text":"MK.4"}]}'}, CustomModelData: 11}
item replace entity @s[tag=slv5] hotbar.0 with minecraft:carrot_on_a_stick{display: {Name: '{"translate":"game.shotgun","with":[{"text":"MK.5"}]}'}, CustomModelData: 12}
item replace entity @s[tag=slv6] hotbar.0 with minecraft:carrot_on_a_stick{display: {Name: '{"translate":"game.shotgun","with":[{"text":"MK.6"}]}'}, CustomModelData: 13}

item replace entity @s weapon.offhand with air
item replace entity @s hotbar.2 with air
item replace entity @s hotbar.3 with air
item replace entity @s hotbar.4 with air
item replace entity @s hotbar.5 with air
item replace entity @s hotbar.6 with air
item replace entity @s hotbar.7 with air
item replace entity @s hotbar.8 with air

