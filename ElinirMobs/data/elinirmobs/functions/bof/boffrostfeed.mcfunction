execute at @s run particle block ice ~ ~1 ~ 0 0 0 1 25 normal
execute at @s run playsound block.glass.break block @a[distance=..16] ~ ~ ~ 0.75 1 0.35
execute at @s run playsound entity.player.burp hostile @a[distance=..16] ~ ~ ~ 1 0.75 1
effect give @s speed 10 2 false
effect give @s glowing 10 0 true
execute at @s run particle composter ~ ~1 ~ 0.5 0.5 0.5 0.1 250 normal
kill @e[tag=bof,limit=1,sort=nearest]