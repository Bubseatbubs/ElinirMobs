execute unless entity @e[tag=BoFEnemy] run scoreboard players add .bofsummon EM_BoFSummonTick 1
execute if score .bofsummon EM_BoFSummonTick matches 0 in minecraft:bof run tellraw @s {"text":"One yet remains.","color":"dark_purple","italic":true}
execute if score .bofsummon EM_BoFSummonTick matches 1 in minecraft:bof run tellraw @a[x=0] {"text":"A strange scent fills the room...","color":"dark_purple","italic":true}
execute if score .bofsummon EM_BoFSummonTick matches 1 run summon armor_stand 0 4 0 {Silent:1b,Marker:1b,Invisible:1b,Tags:["bofsummon"]}
execute if score .bofsummon EM_BoFSummonTick matches 1 run summon armor_stand 0 0 0 {Silent:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["bofmodel"],HandItems:[{id:"minecraft:coal",Count:1b,tag:{CustomModelData:30000}},{}],ArmorItems:[{},{},{},{id:"minecraft:coal",Count:1b,tag:{CustomModelData:30000,Enchantments:[{id:"minecraft:protection",lvl:1s}]}}]}
execute as @e[tag=bofsummon] at @s rotated ~90 ~-90 positioned 0 5 0 run function elinirmobs:anim/animate
execute at @e[tag=bofsummon] as @a[distance=..3] at @s run tp @s ^ ^ ^-0.5
execute if entity @e[tag=bofsummon] as @e[tag=bofmodel] at @s run tp @s ~ ~0.03 ~ ~5 ~
execute if score .bofsummon EM_BoFSummonTick matches 180 run execute in minecraft:bof run summon zombie 0 5 0 {Tags:["BoFEnemy"]}
execute if score .bofsummon EM_BoFSummonTick matches 180 run execute as @e[tag=BoFEnemy] at @s facing entity @p eyes run tp @s ~ ~ ~
execute if score .bofsummon EM_BoFSummonTick matches 180 run kill @e[tag=bofsummon]
execute if score .bofsummon EM_BoFSummonTick matches 180 run kill @e[tag=bofmodel]
execute if score .bofsummon EM_BoFSummonTick matches 180 run scoreboard players set .bofsummon EM_BoFSummonTick 0

execute if entity @e[tag=bofsummon] run schedule function elinirmobs:bof/bofsummon 1t append
