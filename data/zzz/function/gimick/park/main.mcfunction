# 時計回りの回転
execute as @e[type=armor_stand,tag=hummer] at @s if score @s park matches -180.. run scoreboard players add @s park 6
execute as @e[type=armor_stand,tag=hummer] at @s if score @s park matches 180.. run scoreboard players set @s park -180
execute as @e[type=armor_stand,tag=hummer] at @s store result entity @s Rotation[0] float 1 run scoreboard players get @s park
execute as @e[type=armor_stand,tag=hummer] at @s positioned ^1 ^ ^3 as @a[distance=..0.5] at @s run kill @s

# 反時計回りの回転 (reverse_hummer)
execute as @e[type=armor_stand,tag=reverse_hummer] at @s if score @s park matches ..-180 run scoreboard players set @s park 180
execute as @e[type=armor_stand,tag=reverse_hummer] at @s if score @s park matches ..180 run scoreboard players remove @s park 6
execute as @e[type=armor_stand,tag=reverse_hummer] at @s store result entity @s Rotation[0] float 1 run scoreboard players get @s park
execute as @e[type=armor_stand,tag=reverse_hummer] at @s positioned ^-1 ^ ^3 as @a[distance=..0.5] at @s run kill @s

# 90°ずれた時計回りの回転 (hummer_90)
execute as @e[type=armor_stand,tag=hummer_90] at @s if score @s park matches -180.. run scoreboard players add @s park 6
execute as @e[type=armor_stand,tag=hummer_90] at @s if score @s park matches 180.. run scoreboard players set @s park -180
execute as @e[type=armor_stand,tag=hummer_90] at @s store result entity @s Rotation[0] float 1 run scoreboard players operation @s park_temp = @s park
execute as @e[type=armor_stand,tag=hummer_90] at @s run scoreboard players add @s park_temp 90
execute as @e[type=armor_stand,tag=hummer_90] at @s if score @s park_temp matches 181.. run scoreboard players remove @s park_temp 360
execute as @e[type=armor_stand,tag=hummer_90] at @s store result entity @s Rotation[0] float 1 run scoreboard players get @s park_temp
execute as @e[type=armor_stand,tag=hummer_90] at @s positioned ^1 ^ ^3 as @a[distance=..0.5] at @s run kill @s

# 90°ずれた反時計回りの回転 (reverse_hummer_90)
execute as @e[type=armor_stand,tag=reverse_hummer_90] at @s if score @s park matches ..-180 run scoreboard players set @s park 180
execute as @e[type=armor_stand,tag=reverse_hummer_90] at @s if score @s park matches ..180 run scoreboard players remove @s park 6
execute as @e[type=armor_stand,tag=reverse_hummer_90] at @s store result entity @s Rotation[0] float 1 run scoreboard players operation @s park_temp = @s park
execute as @e[type=armor_stand,tag=reverse_hummer_90] at @s run scoreboard players add @s park_temp 90
execute as @e[type=armor_stand,tag=reverse_hummer_90] at @s if score @s park_temp matches 181.. run scoreboard players remove @s park_temp 360
execute as @e[type=armor_stand,tag=reverse_hummer_90] at @s store result entity @s Rotation[0] float 1 run scoreboard players get @s park_temp
execute as @e[type=armor_stand,tag=reverse_hummer_90] at @s positioned ^-1 ^ ^3 as @a[distance=..0.5] at @s run kill @s

function zzz:gimick/park/particle