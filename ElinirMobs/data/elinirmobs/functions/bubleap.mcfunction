execute store result score @s motion_x1 run data get entity @e[tag=BubEnemy,limit=1] Pos[0] 1000
execute store result score @s motion_y1 run data get entity @e[tag=BubEnemy,limit=1] Pos[1] 1000
execute store result score @s motion_z1 run data get entity @e[tag=BubEnemy,limit=1] Pos[2] 1000

tp @e[tag=BubEnemy,limit=1] ^ ^ ^0.01

execute store result score @s motion_x2 run data get entity @e[tag=BubEnemy,limit=1] Pos[0] 1000
execute store result score @s motion_y2 run data get entity @e[tag=BubEnemy,limit=1] Pos[1] 1000
execute store result score @s motion_z2 run data get entity @e[tag=BubEnemy,limit=1] Pos[2] 1000

execute store result entity @s Motion[0] double 0.05 run scoreboard players operation @s motion_x2 -= @s motion_x1
execute store result entity @s Motion[1] double 0.01 run scoreboard players operation @s motion_y2 -= @s motion_y1
execute store result entity @s Motion[2] double 0.05 run scoreboard players operation @s motion_z2 -= @s motion_z1

execute at @s run playsound entity.puffer_fish.sting hostile @a[distance=..16] ~ ~ ~ 1 0.5 0.3
execute at @s run playsound entity.polar_bear.warning hostile @a[distance=..16] ~ ~ ~ 1 0.5 0.3
execute at @s run particle cloud ~ ~ ~ 0.5 1 1 1 100 normal
scoreboard players set @s EM_BubHostile 0