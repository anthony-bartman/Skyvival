#--------------------------------------
# Author: Anthony Bartman
# Date Edited: 2-2-20
# Desc: This will allow the players to break coal box and populate their skyisland
#--------------------------------------
#Tell players what is happening
execute if entity @s[scores={helpmenu_time=7..8}] run summon minecraft:armor_stand -309 167 224 {Tags:["magentaTeamCen"],Invisible:1,NoGravity:1,DisabledSlots:2039583,Marker:1}
execute if entity @s[scores={helpmenu_time=13..14}] at @e[type=minecraft:armor_stand,tag=magentaTeamCen,limit=1] run summon minecraft:armor_stand ~-16 ~57 ~55 {Tags:["magentaTeamSpawn"],Invisible:1,NoGravity:1,DisabledSlots:2039583,Marker:1}
execute if entity @s[scores={helpmenu_time=13}] run title @a[team=magentaTeam] title {"text":"Populating Island...","bold":true,"color":"dark_aqua"}
execute if entity @s[scores={helpmenu_time=33}] run title @a[team=magentaTeam] title {"text":"Beginning Map In...","bold":true,"italic":true,"color":"light_purple"}
execute if entity @s[scores={helpmenu_time=47}] run title @a[team=magentaTeam] title {"text":"3","bold":true,"color":"green"}
execute if entity @s[scores={helpmenu_time=60}] run title @a[team=magentaTeam] title {"text":"2","bold":true,"color":"yellow"}
execute if entity @s[scores={helpmenu_time=73}] run title @a[team=magentaTeam] title {"text":"1","bold":true,"color":"red"}

#Populate Island
execute if entity @s[scores={helpmenu_time=10}] run function skyisland:teams/magenta/populate

#Other Player settigns for SkyAdventure
execute if entity @s[scores={helpmenu_time=20}] run recipe give @a[team=magentaTeam] *
execute if entity @s[scores={helpmenu_time=33}] run recipe take @a[team=magentaTeam] *
execute if entity @s[scores={helpmenu_time=37}] run clear @a[team=magentaTeam]
execute if entity @s[scores={helpmenu_time=50}] run effect clear @a[team=magentaTeam]
execute if entity @s[scores={helpmenu_time=63}] run advancement revoke @a[team=magentaTeam] through minecraft:story/obtain_armor 
execute if entity @s[scores={helpmenu_time=80}] run advancement grant @a[team=magentaTeam] only skyisland:root
execute if entity @s[scores={helpmenu_time=87}] as @a[team=magentaTeam] run playsound minecraft:entity.illusioner.prepare_mirror master @s ~ ~ ~ 100

#Lets players Free
execute if entity @s[scores={helpmenu_time=87}] run title @a[team=magentaTeam] title ["",{"text":"W","bold":true,"italic":true,"color":"gold"},{"text":"e","bold":true,"italic":true,"color":"light_purple"},{"text":"l","bold":true,"italic":true,"color":"aqua"},{"text":"c","bold":true,"italic":true,"color":"red"},{"text":"o","bold":true,"italic":true,"color":"yellow"},{"text":"m","bold":true,"italic":true,"color":"yellow"},{"text":"e","bold":true,"italic":true,"color":"yellow"},{"text":" to ","bold":true,"italic":true},{"text":"S","bold":true,"italic":true,"color":"gold"},{"text":"K","bold":true,"italic":true,"color":"gray"},{"text":"Y","bold":true,"italic":true,"color":"light_purple"},{"text":"V","bold":true,"italic":true,"color":"aqua"},{"text":"I","bold":true,"italic":true,"color":"red"},{"text":"V","bold":true,"italic":true,"color":"yellow"},{"text":"A","bold":true,"italic":true,"color":"green"},{"text":"L","bold":true,"italic":true,"color":"blue"}]
execute if entity @s[scores={helpmenu_time=87}] run title @a[team=magentaTeam] subtitle ["",{"text":"Don't ","bold":true,"color":"dark_aqua"},{"text":"die","bold":true,"color":"red"},{"text":" too much... ","bold":true,"color":"dark_aqua"},{"text":"xD","bold":true,"color":"gold"}]
execute if entity @s[scores={helpmenu_time=87}] at @e[type=minecraft:armor_stand,tag=magentaTeamSpawn,limit=1] run function skyisland:breakcoalbox
