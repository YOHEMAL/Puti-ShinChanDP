function zzz:chest/5
scoreboard players set 5 cc 0

tag @a remove boo

scoreboard objectives remove boo
scoreboard objectives add boo minecraft.custom:minecraft.sneak_time

# おならギミックの制限時間用スコアボード
scoreboard objectives add boo_timer dummy "おならギミック制限時間"
scoreboard players set @a boo_timer 0

# 計算用の一時スコアボードと定数
scoreboard objectives add temp dummy "一時計算用"
scoreboard objectives add temp_min dummy "分計算用"
scoreboard objectives add temp_sec dummy "秒計算用"
scoreboard objectives add const dummy "定数用"
scoreboard players set #20 const 20
scoreboard players set #60 const 60
scoreboard players set #-1 const -1
scoreboard players set #1200 const 1200