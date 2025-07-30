execute unless block 184 65 33 chest{Items:[{id:"minecraft:diamond",count:1}]} if score 5 cc matches 0 run scoreboard players add 5 cc 1

# ギミック発動時にプレイヤーにタグ付与と制限時間開始
execute if score 5 cc matches 1 positioned 184 65 33 run tag @a[distance=..5,sort=nearest,limit=1] add boo
execute if score 5 cc matches 1 positioned 184 65 33 run scoreboard players set @a[distance=..5,sort=nearest,limit=1] boo_timer 0
execute if score 5 cc matches 1.. run scoreboard players set 5 cc 100

# おならギミックの制限時間管理（1分 = 1200tick）
execute as @a[tag=boo] run scoreboard players add @s boo_timer 1

# 制限時間が過ぎたらタグを削除してギミック終了
execute as @a[tag=boo,scores={boo_timer=1200..}] run tag @s remove boo
execute as @a[tag=boo,scores={boo_timer=1200..}] run title @s actionbar [{"text":"おならがおさまった。","color":"yellow"}]
execute as @a[tag=boo,scores={boo_timer=1200..}] run scoreboard players set @s boo_timer 0

# おならギミック実行（制限時間内のみ）
execute as @a[tag=boo,scores={boo=1..}] at @s unless block ~ ~-0.2 ~ air run function zzz:gimick/5/boo
execute as @a at @s if score @s boo matches 1.. run scoreboard players set @s boo 0

# 残り時間計算（秒のみ）
execute as @a[tag=boo] run scoreboard players set @s temp 1200
execute as @a[tag=boo] run scoreboard players operation @s temp -= @s boo_timer

# 秒用の計算（temp_sec）
execute as @a[tag=boo] run scoreboard players operation @s temp_sec = @s temp
execute as @a[tag=boo] run scoreboard players operation @s temp_sec /= #20 const

# 操作説明表示（秒単位のみ）
execute as @a[tag=boo] at @s run title @s actionbar [{"keybind": "key.sneak"},{"text":"でおならをする "},{"text":"(残り時間: ","color":"gray"},{"score":{"name":"@s","objective":"temp_sec"},"color":"yellow"},{"text":"秒)","color":"gray"}]

# 浮遊効果のクリア
execute as @a[tag=boo] at @s if block ~ ~-1 ~ air run effect clear @s minecraft:levitation