#--------------------------------------
# Author: Anthony Bartman
# Date Edited: 2-12-20
# Desc: This will join the player to the team
#--------------------------------------

#False
execute if score Teammates gdTeamPlayers >= goldTeam maxPlayers run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 100
execute if score Teammates gdTeamPlayers >= goldTeam maxPlayers run title @s title {"text":"\u25b6 Gold Team \u25c0","bold":true,"italic":true,"color":"gold"}
execute if score Teammates gdTeamPlayers >= goldTeam maxPlayers run title @a subtitle [{"text":"Already Contains ","bold":true},{"score":{"name":"goldTeam","objective":"maxPlayers"},"color":"dark_red","bold":true},{"text":" Players","color":"white"}]

#True
#Update other Team Stats if player is already on a team
execute if score Teammates gdTeamPlayers < goldTeam maxPlayers as @s run function lobby:teams/update
#Join Team
execute if score Teammates gdTeamPlayers < goldTeam maxPlayers run team join goldTeam @s
execute if score Teammates gdTeamPlayers < goldTeam maxPlayers run scoreboard players add @s gdTeamPlayers 1
#Signify Player
execute if score Teammates gdTeamPlayers < goldTeam maxPlayers run scoreboard objectives setdisplay sidebar.team.gold gdTeamPlayers
execute if score Teammates gdTeamPlayers < goldTeam maxPlayers run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 100
execute if score Teammates gdTeamPlayers < goldTeam maxPlayers run title @s title {"text":"You Have Joined","bold":true}
execute if score Teammates gdTeamPlayers < goldTeam maxPlayers run title @s subtitle {"text":"\u25b6 Gold Team \u25c0","bold":true,"italic":true,"color":"gold"}
#Add one to total number of Teammates
execute if score Teammates gdTeamPlayers < goldTeam maxPlayers run scoreboard players add Teammates gdTeamPlayers 1

#Player can select kits 
execute if score Teammates gdTeamPlayers < goldTeam maxPlayers run title @s actionbar {"text":"Select a Kit","color":"yellow","bold":true}
#Sets 'Kit' score to 0 (No Kit)
execute if score Teammates gdTeamPlayers < goldTeam maxPlayers run scoreboard players enable @s chooseKit
execute if score Teammates gdTeamPlayers < goldTeam maxPlayers as @s run function lobby:kits/selection_book

#Teleport back to middle
teleport @s @e[tag=mainLobby,limit=1]

