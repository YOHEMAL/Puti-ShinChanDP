# 臭そうな茶色と緑のパーティクルを大量に発生
execute as @a[tag=boo] at @s run particle minecraft:dust{color:[0.3,0.2,0.1],scale:2.0} ~ ~0.5 ~ 3 1 3 0.1 80 force
execute as @a[tag=boo] at @s run particle minecraft:dust{color:[0.4,0.3,0.1],scale:1.8} ~ ~0.8 ~ 2.5 1.2 2.5 0.1 60 force
execute as @a[tag=boo] at @s run particle minecraft:dust{color:[0.2,0.3,0.1],scale:1.5} ~ ~1.1 ~ 2 1.5 2 0.1 40 force
execute as @a[tag=boo] at @s run particle minecraft:campfire_cosy_smoke ~ ~0.3 ~ 1.5 0.5 1.5 0.05 20 force
execute as @a[tag=boo] at @s run playsound minecraft:block.note_block.didgeridoo master @a[distance=..10] ~ ~ ~ 1 0.2
execute as @a[tag=boo] at @s as @a[distance=..5,tag=!boo] run damage @s 20 magic
execute as @a[tag=boo] at @s run effect give @s minecraft:levitation 1 99 true
execute as @a[tag=boo] at @s run effect give @s minecraft:resistance 5 30 true
