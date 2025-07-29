execute unless block 184 65 33 chest{Items:[{id:"minecraft:diamond",count:1}]} if score 5 cc matches 0 run scoreboard players add 5 cc 1

# ギミック発動時にプレイヤーにタグ付与と制限時間開始
execute if score 5 cc matches 1 positioned 184 65 33 run tag @a[distance=..5,sort=nearest,limit=1] add boo
execute if score 5 cc matches 1 positioned 184 65 33 run scoreboard players set @a[distance=..5,sort=nearest,limit=1] boo_timer 0
execute if score 5 cc matches 1.. run scoreboard players set 5 cc 100

# おならギミックの制限時間管理（3分 = 3600tick）
execute as @a[tag=boo] run scoreboard players add @s boo_timer 1

# 制限時間が過ぎたらタグを削除してギミック終了
execute as @a[tag=boo,scores={boo_timer=3600..}] run tag @s remove boo
execute as @a[tag=boo,scores={boo_timer=3600..}] run title @s actionbar [{"text":"おならがおさまった。","color":"yellow"}]
execute as @a[tag=boo,scores={boo_timer=3600..}] run scoreboard players set @s boo_timer 0

# おならギミック実行（制限時間内のみ）
execute as @a[tag=boo,scores={boo=1..}] at @s unless block ~ ~-0.2 ~ air run function zzz:gimick/5/boo
execute as @a at @s if score @s boo matches 1.. run scoreboard players set @s boo 0

# 残り時間計算（分と秒の両方を計算）
execute as @a[tag=boo] run scoreboard players set @s temp 3600
execute as @a[tag=boo] run scoreboard players operation @s temp -= @s boo_timer

# 分用の計算（temp_min）
execute as @a[tag=boo] run scoreboard players operation @s temp_min = @s temp
execute as @a[tag=boo] run scoreboard players operation @s temp_min /= #1200 const
execute as @a[tag=boo] run scoreboard players add @s temp_min 1

# 秒用の計算（temp_sec）
execute as @a[tag=boo] run scoreboard players operation @s temp_sec = @s temp
execute as @a[tag=boo] run scoreboard players operation @s temp_sec /= #20 const

# 操作説明表示（2分以上なら分単位、2分未満なら秒単位）
execute as @a[tag=boo,scores={temp_min=3..}] at @s run title @s actionbar [{"keybind": "key.sneak"},{"text":"でおならをする "},{"text":"(残り時間: ","color":"gray"},{"score":{"name":"@s","objective":"temp_min"},"color":"yellow"},{"text":"分)","color":"gray"}]
execute as @a[tag=boo,scores={temp_min=..1}] at @s run title @s actionbar [{"keybind": "key.sneak"},{"text":"でおならをする "},{"text":"(残り時間: ","color":"red"},{"score":{"name":"@s","objective":"temp_sec"},"color":"yellow"},{"text":"秒)","color":"red"}]

# 浮遊効果のクリア
execute as @a[tag=boo] at @s if block ~ ~-1 ~ air run effect clear @s minecraft:levitation