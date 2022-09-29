execute as @e[tag=bof] run function elinirmobs:bof/bofprojremove
execute as @e[tag=frostfeeder] run function elinirmobs:bof/bofprojremove
execute in minecraft:bof run execute as @a[x=0] at @s run playsound minecraft:lumebattlebgmend1 record @s ~ ~ ~ 0.65 0.9
execute in minecraft:bof run execute as @a[x=0] at @s run playsound entity.wither.death hostile @s ~ ~ ~ 1 1
execute in minecraft:bof run title @a[x=0] subtitle {"text":"Bastard of Frost","color":"aqua","bold":true}
execute in minecraft:bof run title @a[x=0] title {"text":"❈ ᐯ卂几Ɋㄩ丨丂卄乇ᗪ ❈","color":"gold"}
scoreboard players set .bofcheck BoF_isAlive 0
