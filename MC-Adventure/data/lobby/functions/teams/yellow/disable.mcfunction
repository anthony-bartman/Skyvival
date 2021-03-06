#--------------------------------------
# Author: Anthony Bartman
# Date Edited: 2-2-20
# Desc: This will disable the specific team
#--------------------------------------

#Updates user its disabled
execute if score yellowTeam enabledTeams matches 1 run tellraw @a[tag=leader] ["",{"text":"\n"},{"text":"Yellow Team ","color":"yellow","bold":true},{"text":"has been [","color":"gray","bold":false},{"text":"DISABLED","bold":true,"color":"red"},{"text":"]","color":"gray","bold":false}]
#Already Enabled
execute if score yellowTeam enabledTeams matches 0 run tellraw @a[tag=leader] ["",{"text":"\n"},{"text":"Yellow Team ","color":"yellow","bold":true},{"text":"has already been [","color":"gray","bold":false},{"text":"DISABLED","bold":true,"color":"red"},{"text":"]","color":"gray","bold":false},{"text":"\n "}]

#Remove Team Armor Stands
execute if score yellowTeam enabledTeams matches 1 at @e[type=minecraft:armor_stand,tag=yellowTeam,limit=1] run kill @e[type=minecraft:armor_stand,distance=..2]
#Tell players team has been disabled by server leader
execute if score yellowTeam enabledTeams matches 1 run scoreboard players reset @a yTeamPlayers
execute if score yellowTeam enabledTeams matches 1 run scoreboard players set Teammates yTeamPlayers 0
#Reset Kits
execute if score yellowTeam enabledTeams matches 1 run scoreboard players reset @a[team=yellowTeam] chooseKit
execute if score yellowTeam enabledTeams matches 1 run clear @a[team=yellowTeam]
#Update yellow team players
execute if score yellowTeam enabledTeams matches 1 run title @a[team=yellowTeam] subtitle ["",{"text":"Has Been ["},{"text":"DISABLED","color":"red"},{"text":"] by "},{"selector":"@a[tag=leader]"}]
execute if score yellowTeam enabledTeams matches 1 run title @a[team=yellowTeam] title {"text":"Yellow Team","bold":true,"italic":true,"color":"yellow"}
#All Players Leave their Team
execute if score yellowTeam enabledTeams matches 1 run teleport @a[team=yellowTeam] @e[type=minecraft:armor_stand,tag=mainLobby,limit=1]
execute if score yellowTeam enabledTeams matches 1 run team leave @a[team=yellowTeam]

#Disable Team
execute if score yellowTeam enabledTeams matches 1 run scoreboard players reset yellowMP mapProgress
execute if score yellowTeam enabledTeams matches 1 run scoreboard players set yellowTeam enabledTeams 0
#Reset book counter once this executes
scoreboard players set @a[tag=leader] book 0