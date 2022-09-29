effect give @s invisibility 1000000 1 true
data merge entity @s {HasVisualFire:0b,Silent:1b,Health:200f,Tags:["CustomMob","BubEnemy"],ArmorItems:[{},{},{},{id:"minecraft:coal",Count:1b,tag:{display:{Name:'{"text":"Bub"}',Lore:['{"text":"It appears that you can now"}','{"text":"tame the bub!"}','{"text":"And... wear it on your head?!","italic":true}']},HideFlags:32,CustomModelData:10000}}],Attributes:[{Name:generic.max_health,Base:200},{Name:generic.attack_damage,Base:5},{Name:zombie.spawn_reinforcements,Base:0}]}
tag @s add BubInit
scoreboard players set @s EM_BubTick 0