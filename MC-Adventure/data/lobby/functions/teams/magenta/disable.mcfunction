#--------------------------------------
# Author: Anthony Bartman
# Date Edited: 2-2-20
# Desc: This will disable the specific team
#--------------------------------------

#Updates user its disabled
execute if score magentaTeam enabledTeams matches 1 run tellraw @a[tag=leader] ["",{"text":"\n"},{"text":"Magenta Team ","color":"light_purple","bold":true},{"text":"has been [","color":"gray","bold":false},{"text":"DISABLED","bold":true,"color":"red"},{"text":"]","color":"gray","bold":false}]
#Already Enabled
execute if score magentaTeam enabledTeams matches 0 run tellraw @a[tag=leader] ["",{"text":"\n"},{"text":"Magenta Team ","color":"light_purple","bold":true},{"text":"has already been [","color":"gray","bold":false},{"text":"DISABLED","bold":true,"color":"red"},{"text":"]","color":"gray","bold":false},{"text":"\n "}]

#Remove Team Armor Stands
execute if score magentaTeam enabledTeams matches 1 at @e[type=minecraft:armor_stand,tag=magentaTeam,limit=1] run kill @e[type=minecraft:armor_stand,distance=..2]
#Tell players team has been disabled by server leader
execute if score magentaTeam enabledTeams matches 1 run scoreboard players reset @a mTeamPlayers
execute if score magentaTeam enabledTeams matches 1 run scoreboard players set Teammates mTeamPlayers 0
#Reset Kits
execute if score magentaTeam enabledTeams matches 1 run scoreboard players reset @a[team=magentaTeam] chooseKit
execute if score magentaTeam enabledTeams matches 1 run clear @a[team=magentaTeam]
#Update magenta team players
execute if score magentaTeam enabledTeams matches 1 run title @a[team=magentaTeam] subtitle ["",{"text":"Has Been ["},{"text":"DISABLED","color":"red"},{"text":"] by "},{"selector":"@a[tag=leader]"}]
execute if score magentaTeam enabledTeams matches 1 run title @a[team=magentaTeam] title {"text":"Magenta Team","bold":true,"italic":true,"color":"light_purple"}
#All Players Leave their Team
execute if score magentaTeam enabledTeams matches 1 run teleport @a[team=magentaTeam] @e[type=minecraft:armor_stand,tag=mainLobby,limit=1]
execute if score magentaTeam enabledTeams matches 1 run team leave @a[team=magentaTeam]

#Disable Team
execute if score magentaTeam enabledTeams matches 1 run scoreboard players reset magentaMP mapProgress
execute if score magentaTeam enabledTeams matches 1 run scoreboard players set magentaTeam enabledTeams 0
#Reset book counter once this executes
scoreboard players set @a[tag=leader] book 0