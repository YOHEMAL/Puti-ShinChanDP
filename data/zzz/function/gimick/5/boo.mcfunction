execute as @a[tag=boo] at @s run particle minecraft:cloud ~ ~ ~ 2 2 2 0 100 force
execute as @a[tag=boo] at @s run playsound minecraft:block.note_block.didgeridoo master @a[distance=..10] ~ ~ ~ 1 0.2
execute as @a[tag=boo] at @s as @a[distance=..5,tag=!boo] run damage @s 20 magic
execute as @a[tag=boo] at @s run effect give @s minecraft:levitation 1 99 true
execute as @a[tag=boo] at @s run effect give @s minecraft:resistance 5 30 true
