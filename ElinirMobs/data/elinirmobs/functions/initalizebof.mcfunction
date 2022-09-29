effect give @s invisibility 1000000 1 true
effect give @s jump_boost 1000000 2 true
data merge entity @s {HasVisualFire:0b,Silent:1b,CustomNameVisible:1b,Health:400f,IsBaby:0b,Tags:["CustomMob","BoFEnemy"],CustomName:'{"text":"Bastard of Frost","color":"aqua","bold":true}',HandItems:[{id:"minecraft:coal",Count:1b,tag:{display:{Name:'{"text":"BoF"}'},HideFlags:32,CustomModelData:30000,Enchantments:[{id:"minecraft:knockback",lvl:3s}]}},{id:"minecraft:air",Count:1b}],HandDropChances:[0.000F,0.085F],ArmorItems:[{id:"minecraft:air",Count:1b},{id:"minecraft:air",Count:1b},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:11071231}}},{id:"minecraft:air",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.000F,0.085F],Attributes:[{Name:generic.max_health,Base:400},{Name:generic.follow_range,Base:128},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.31},{Name:generic.attack_damage,Base:8},{Name:generic.attack_knockback,Base:1.0}]}
tag @s add BoFInit
scoreboard players set @s EM_BoFTick 0
scoreboard players set .bofcheck BoF_isAlive 1

execute in minecraft:bof run title @a[x=0] subtitle {"text":"Bastard of Frost","color":"aqua","bold":true}
execute in minecraft:bof run title @a[x=0] title {"text":"❈ 卂山ㄖҜ乇几 ❈","color":"gold"}
execute in minecraft:bof run playsound entity.ender_dragon.growl hostile @a[x=0] ~ ~ ~ 1 0.75 1