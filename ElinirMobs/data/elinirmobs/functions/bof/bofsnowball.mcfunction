
execute as @s rotated as @s positioned 0 0 0 align xyz run summon minecraft:armor_stand ^ ^ ^1 {Invulnerable:1b,NoGravity:1b,Tags:["aim"]}
execute as @s at @s run summon armor_stand ~ ~0.5 ~ {Silent:1b,Invisible:1b,Tags:["bof","bofinit"],HandItems:[{id:"minecraft:ice",Count:1b},{}]}
scoreboard players reset @s EM_BoFSnowball
execute as @e[type=armor_stand,tag=bofinit] at @s run function elinirmobs:bof/boftoss

tp @s ~ ~ ~ ~-60 ~
execute as @s rotated as @s positioned 0 0 0 align xyz run summon minecraft:armor_stand ^ ^ ^1 {Invulnerable:1b,NoGravity:1b,Tags:["aim"]}
execute as @s at @s run summon armor_stand ~ ~0.5 ~ {Silent:1b,Invisible:1b,Tags:["bof","bofinit"],HandItems:[{id:"minecraft:ice",Count:1b},{}]}
scoreboard players reset @s EM_BoFSnowball
execute as @e[type=armor_stand,tag=bofinit] at @s run function elinirmobs:bof/boftoss

tp @s ~ ~ ~ ~30 ~
execute as @s rotated as @s positioned 0 0 0 align xyz run summon minecraft:armor_stand ^ ^ ^1 {Invulnerable:1b,NoGravity:1b,Tags:["aim"]}
execute as @s at @s run summon armor_stand ~ ~0.5 ~ {Silent:1b,Invisible:1b,Tags:["bof","bofinit"],HandItems:[{id:"minecraft:ice",Count:1b},{}]}
scoreboard players reset @s EM_BoFSnowball
execute as @e[type=armor_stand,tag=bofinit] at @s run function elinirmobs:bof/boftoss

tp @s ~ ~ ~ ~30 ~
execute as @s rotated as @s positioned 0 0 0 align xyz run summon minecraft:armor_stand ^ ^ ^1 {Invulnerable:1b,NoGravity:1b,Tags:["aim"]}
execute as @s at @s run summon armor_stand ~ ~0.5 ~ {Silent:1b,Invisible:1b,Tags:["bof","bofinit"],HandItems:[{id:"minecraft:ice",Count:1b},{}]}
scoreboard players reset @s EM_BoFSnowball
execute as @e[type=armor_stand,tag=bofinit] at @s run function elinirmobs:bof/boftoss

tp @s ~ ~ ~ ~30 ~
execute as @s rotated as @s positioned 0 0 0 align xyz run summon minecraft:armor_stand ^ ^ ^1 {Invulnerable:1b,NoGravity:1b,Tags:["aim"]}
execute as @s at @s run summon armor_stand ~ ~0.5 ~ {Silent:1b,Invisible:1b,Tags:["bof","bofinit"],HandItems:[{id:"minecraft:ice",Count:1b},{}]}
scoreboard players reset @s EM_BoFSnowball
execute as @e[type=armor_stand,tag=bofinit] at @s run function elinirmobs:bof/boftoss

tp @s ~ ~ ~ ~-30 ~-30
execute as @s rotated as @s positioned 0 0 0 align xyz run summon minecraft:armor_stand ^ ^ ^1 {Invulnerable:1b,NoGravity:1b,Tags:["aim"]}
execute as @s at @s run summon armor_stand ~ ~0.5 ~ {Silent:1b,Invisible:1b,Tags:["bof","bofinit"],HandItems:[{id:"minecraft:ice",Count:1b},{}]}
scoreboard players reset @s EM_BoFSnowball
execute as @e[type=armor_stand,tag=bofinit] at @s run function elinirmobs:bof/boftoss
