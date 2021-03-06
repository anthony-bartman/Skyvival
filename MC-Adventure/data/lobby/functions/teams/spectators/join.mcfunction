#--------------------------------------
# Author: Anthony Bartman
# Date Edited: 2-12-20
# Desc: This will join the player to the team
#--------------------------------------

#Update other Team Stats if player is already on a team
execute as @s run function lobby:teams/update
#Join Team
tag @s remove player
team join spectators @s
scoreboard players add @s spectators 1
#Signify Player
scoreboard objectives setdisplay sidebar.team.dark_gray spectators
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 100
title @s title {"text":"You Have Joined","bold":true}
title @s subtitle {"text":"\u25b6 The Spectators \u25c0","bold":true,"italic":true,"color":"dark_gray"}
#Add one to total number of Teammates
scoreboard players add Total_Spectators spectators 1

#Teleport back to middle
teleport @s @e[tag=mainLobby,limit=1]