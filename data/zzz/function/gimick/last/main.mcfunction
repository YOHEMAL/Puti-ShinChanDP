# team=oniのプレイヤーのダイヤモンド所持確認をリセット
scoreboard players set @a[team=oni] last_diamond_check 0

# custom_model_data:1のダイヤモンド所持確認
execute as @a[team=oni] if items entity @s container.* minecraft:diamond[minecraft:custom_model_data=1] run scoreboard players add @s last_diamond_check 1

# custom_model_data:2のダイヤモンド所持確認
execute as @a[team=oni] if items entity @s container.* minecraft:diamond[minecraft:custom_model_data=2] run scoreboard players add @s last_diamond_check 1

# custom_model_data:4のダイヤモンド所持確認
execute as @a[team=oni] if items entity @s container.* minecraft:diamond[minecraft:custom_model_data=4] run scoreboard players add @s last_diamond_check 1

# custom_model_data:5のダイヤモンド所持確認
execute as @a[team=oni] if items entity @s container.* minecraft:diamond[minecraft:custom_model_data=5] run scoreboard players add @s last_diamond_check 1

# custom_model_data:6のダイヤモンド所持確認
execute as @a[team=oni] if items entity @s container.* minecraft:diamond[minecraft:custom_model_data=6] run scoreboard players add @s last_diamond_check 1

# プリズマリンクリスタルの所持確認
execute as @a[team=oni] if items entity @s container.* minecraft:prismarine_crystals run scoreboard players set @s last_crystal_check 1
execute as @a[team=oni] unless items entity @s container.* minecraft:prismarine_crystals run scoreboard players set @s last_crystal_check 0

# ダイヤモンド5つとプリズマリンクリスタルを持っているプレイヤーの処理
execute as @a[team=oni,scores={last_diamond_check=5,last_crystal_check=1,last_activated=0}] run scoreboard players set @s last_activated 1
execute as @a[team=oni,scores={last_diamond_check=5,last_crystal_check=1,last_activated=0}] run scoreboard players set @s last_particle_timer 0

# パーティクルタイマーを増加（activated=1のプレイヤーのみ）
execute as @a[team=oni,scores={last_activated=1}] run scoreboard players add @s last_particle_timer 1

# 茶色と緑のパーティクルを出現（100tick = 5秒間）- 臭そうな演出
execute as @a[team=oni,scores={last_activated=1,last_particle_timer=1..100}] at @s run particle minecraft:dust{color:[0.4,0.2,0.1],scale:1.5} ~ ~1 ~ 0.8 1.0 0.8 0.1 5 normal
execute as @a[team=oni,scores={last_activated=1,last_particle_timer=1..100}] at @s run particle minecraft:dust{color:[0.2,0.4,0.1],scale:1.2} ~ ~1 ~ 0.8 1.0 0.8 0.1 4 normal

# 5～6秒後（100～120tick）にcloudパーティクル出現
execute as @a[team=oni,scores={last_activated=1,last_particle_timer=100..120}] at @s run particle minecraft:cloud ~ ~1 ~ 1 1 1 0.1 200 normal

# プレイヤーの見た目を変更（120tick時点で）
execute as @a[team=oni,scores={last_activated=1,last_particle_timer=120}] run function zzz:gimick/last/transform

# アイテムをクリアしてループを防止
execute as @a[team=oni,scores={last_activated=1,last_particle_timer=120}] run clear @s minecraft:diamond[minecraft:custom_model_data=1]
execute as @a[team=oni,scores={last_activated=1,last_particle_timer=120}] run clear @s minecraft:diamond[minecraft:custom_model_data=2]
execute as @a[team=oni,scores={last_activated=1,last_particle_timer=120}] run clear @s minecraft:diamond[minecraft:custom_model_data=4]
execute as @a[team=oni,scores={last_activated=1,last_particle_timer=120}] run clear @s minecraft:diamond[minecraft:custom_model_data=5]
execute as @a[team=oni,scores={last_activated=1,last_particle_timer=120}] run clear @s minecraft:diamond[minecraft:custom_model_data=6]
execute as @a[team=oni,scores={last_activated=1,last_particle_timer=120}] run clear @s minecraft:prismarine_crystals

# ギミック終了処理（180tick = 9秒後にリセット）
execute as @a[team=oni,scores={last_activated=1,last_particle_timer=180..}] run scoreboard players set @s last_activated 0
execute as @a[team=oni,scores={last_activated=1,last_particle_timer=180..}] run scoreboard players set @s last_particle_timer 0

# 条件を満たさなくなった場合のリセット処理
execute as @a[team=oni,scores={last_activated=1}] unless score @s last_diamond_check matches 5 run scoreboard players set @s last_activated 0
execute as @a[team=oni,scores={last_activated=1}] unless score @s last_crystal_check matches 1 run scoreboard players set @s last_activated 0
execute as @a[team=oni,scores={last_activated=0}] run scoreboard players set @s last_particle_timer 0