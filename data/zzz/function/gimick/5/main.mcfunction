execute unless block 184 65 33 chest{Items:[{id:"minecraft:diamond",count:1}]} if score 5 cc matches 0 run scoreboard players add 5 cc 1

execute if score 5 cc matches 1.. positioned 184 65 33 run tag @a[distance=..10,sort=nearest,limit=1] add boo
execute if score 5 cc matches 1.. run scoreboard players set 5 cc 100

execute as @a[tag=boo,scores={boo=1..}] at @s unless block ~ ~-0.2 ~ air run function zzz:gimick/5/boo
execute as @a at @s if score @s boo matches 1.. run scoreboard players set @s boo 0

execute as @a[tag=boo] at @s run title @s actionbar [{"keybind": "key.sneak"},{"text":"でおならをする"}]


execute as @a[tag=boo] at @s if block ~ ~-1 ~ air run effect clear @s minecraft:levitation