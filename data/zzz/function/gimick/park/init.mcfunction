scoreboard objectives remove park
scoreboard objectives add park dummy

scoreboard objectives remove park_temp
scoreboard objectives add park_temp dummy

scoreboard players set -90 park -90
scoreboard players set 90 park 90
scoreboard players set 180 park 180

scoreboard players set @e[type=minecraft:armor_stand] park 0