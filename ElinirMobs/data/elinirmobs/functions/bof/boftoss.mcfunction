execute store result score @s motion_x1 run data get entity @e[tag=aim,limit=1] Pos[0] 1000
execute store result score @s motion_y1 run data get entity @e[tag=aim,limit=1] Pos[1] 1000
execute store result score @s motion_z1 run data get entity @e[tag=aim,limit=1] Pos[2] 1000

execute as @s store result entity @s Motion[0] double 0.0013 run scoreboard players get @s motion_x1
execute as @s store result entity @s Motion[1] double 0.0023 run scoreboard players get @s motion_y1
execute as @s store result entity @s Motion[2] double 0.0024 run scoreboard players get @s motion_z1
execute at @s run playsound entity.snowball.throw hostile @a[distance=..40] ~ ~ ~ 1 1

tag @s remove bofinit
kill @e[tag=aim]