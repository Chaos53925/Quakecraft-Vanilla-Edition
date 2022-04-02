execute as @a[tag=game,tag=!wlv1,tag=!wlv2,tag=!wlv3,tag=!wlv4,tag=!wlv5,tag=!wlv6,tag=!wlv7] unless entity @s[scores={shotgunshots=2..},nbt={Inventory:[{Slot:0b, id:"minecraft:carrot_on_a_stick"}]}] run scoreboard players set @s shotgunshots 0
execute as @a[tag=game,tag=!wlv1,tag=!wlv2,tag=!wlv3,tag=!wlv4,tag=!wlv5,tag=!wlv6,tag=!wlv7] unless entity @s[scores={shotgunshots=2..},nbt={Inventory:[{Slot:0b, id:"minecraft:carrot_on_a_stick"}]}] run scoreboard players set @s shotguntimer 0

#waffen
item replace entity @s[tag=wlv1] hotbar.0 with minecraft:carrot_on_a_stick{display: {Name: '{"translate":"map.railgun.mk1"}'}, CustomModelData: 1}
item replace entity @s[tag=wlv2] hotbar.0 with minecraft:carrot_on_a_stick{display: {Name: '{"translate":"map.railgun.mk2"}'}, CustomModelData: 2}
item replace entity @s[tag=wlv3] hotbar.0 with minecraft:carrot_on_a_stick{display: {Name: '{"translate":"map.railgun.mk3"}'}, CustomModelData: 3}
item replace entity @s[tag=wlv4] hotbar.0 with minecraft:carrot_on_a_stick{display: {Name: '{"translate":"map.railgun.mk4"}'}, CustomModelData: 4}
item replace entity @s[tag=wlv5] hotbar.0 with minecraft:carrot_on_a_stick{display: {Name: '{"translate":"map.railgun.mk5"}'}, CustomModelData: 5}
item replace entity @s[tag=wlv6] hotbar.0 with minecraft:carrot_on_a_stick{display: {Name: '{"translate":"map.railgun.mk6"}'}, CustomModelData: 6}
item replace entity @s[tag=wlv7] hotbar.0 with minecraft:carrot_on_a_stick{display: {Name: '{"translate":"map.railgun.mk7"}'}, CustomModelData: 7}
#waffen
item replace entity @s[tag=slv1] hotbar.0 with minecraft:carrot_on_a_stick{display: {Name: '{"translate":"map.shotgun.mk1"}'}, CustomModelData: 8}
item replace entity @s[tag=slv2] hotbar.0 with minecraft:carrot_on_a_stick{display: {Name: '{"translate":"map.shotgun.mk2"}'}, CustomModelData: 9}
item replace entity @s[tag=slv3] hotbar.0 with minecraft:carrot_on_a_stick{display: {Name: '{"translate":"map.shotgun.mk3"}'}, CustomModelData: 10}
item replace entity @s[tag=slv4] hotbar.0 with minecraft:carrot_on_a_stick{display: {Name: '{"translate":"map.shotgun.mk4"}'}, CustomModelData: 11}
item replace entity @s[tag=slv5] hotbar.0 with minecraft:carrot_on_a_stick{display: {Name: '{"translate":"map.shotgun.mk5"}'}, CustomModelData: 12}
item replace entity @s[tag=slv6] hotbar.0 with minecraft:carrot_on_a_stick{display: {Name: '{"translate":"map.shotgun.mk6"}'}, CustomModelData: 13}

item replace entity @s weapon.offhand with air
item replace entity @s hotbar.2 with air
item replace entity @s hotbar.3 with air
item replace entity @s hotbar.4 with air
item replace entity @s hotbar.5 with air
item replace entity @s hotbar.6 with air
item replace entity @s hotbar.7 with air
item replace entity @s hotbar.8 with air

