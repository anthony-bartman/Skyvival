#This file handles the timing of the skyvival key ritual

#Gets key
execute if score @s skyAltars matches 16 run function skyisland:adv/special_blocks/getsurvivalkey
execute if score @s skyAltars matches 16 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:3,Flicker:1b,Colors:[I;5891622],FadeColors:[I;16763760]},{Type:1,Flicker:1b,Colors:[I;16731635],FadeColors:[I;16777215]},{Type:2,Flicker:1b,Colors:[I;15859568],FadeColors:[I;6935295]}]}}}}

execute if score @s skyAltars matches 16 run setblock ~-5 ~2 ~ minecraft:air replace 
execute if score @s skyAltars matches 16 run setblock ~-5 ~3 ~ minecraft:sea_lantern replace
#Tells user tp altar unlocked
execute if score @s skyAltars matches 13 run title @a[distance=..50] title {"text":"New Altar","color":"white"}
execute if score @s skyAltars matches 13 run title @a[distance=..50] subtitle {"bold":true,"text":"Has Been Unlocked","color":"aqua"}
execute if score @s skyAltars matches 13 run tellraw @a[distance=..50] [{"text":"\n--------------------\n\n"},{"text":"     Teleport Altar\n","color":"white","bold":true},{"text":"         UNLOCKED\n","color":"aqua","bold":true},{"text":"\n--------------------\n","color":"reset","bold":false}]

#Extra sound effects
execute if score @s skyAltars matches 2 run playsound minecraft:entity.generic.explode master @a[distance=..50] ~ ~ ~ 100
execute if score @s skyAltars matches 2 run playsound minecraft:entity.ender_dragon.growl master @a[distance=..50] ~ ~ ~ 100

execute if score @s skyAltars matches 5 run playsound minecraft:entity.generic.explode master @a[distance=..50] ~ ~ ~ 100
execute if score @s skyAltars matches 5 run playsound minecraft:entity.elder_guardian.curse master @a[distance=..50] ~ ~ ~ 100
execute if score @s skyAltars matches 5 run playsound minecraft:entity.generic.explode master @a[distance=..50] ~ ~ ~ 100

execute if score @s skyAltars matches 8 run playsound minecraft:entity.ender_dragon.growl master @a[distance=..50] ~ ~ ~ 100
execute if score @s skyAltars matches 8 run playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..50] ~ ~ ~ 100
execute if score @s skyAltars matches 8 run playsound minecraft:entity.lightning_bolt.impact master @a[distance=..50] ~ ~ ~ 100
execute if score @s skyAltars matches 8 run playsound minecraft:entity.generic.explode master @a[distance=..50] ~ ~ ~ 100

execute if score @s skyAltars matches 11 run playsound minecraft:entity.generic.explode master @a[distance=..50] ~ ~ ~ 100
execute if score @s skyAltars matches 11 run playsound minecraft:entity.generic.explode master @a[distance=..50] ~ ~ ~ 100
execute if score @s skyAltars matches 11 run playsound minecraft:block.end_portal.spawn master @a[distance=..50] ~ ~ ~ 100
execute if score @s skyAltars matches 12 run playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..50] ~ ~ ~ 100
execute if score @s skyAltars matches 12 run playsound minecraft:entity.lightning_bolt.impact master @a[distance=..50] ~ ~ ~ 100