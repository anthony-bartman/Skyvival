#--------------------------------------
# Author: Anthony Bartman
# Date Edited: 2-12-20
# Desc: This will remove all lobby related items
#--------------------------------------



#Remove Armor Stands
execute at @e[tag=mainLobby] run kill @e[distance=..50,type=!minecraft:player,type=!minecraft:item_frame]

#Remove Teams
team remove goldTeam
team remove purpleTeam
team remove greenTeam
team remove aquaTeam
team remove redTeam
team remove yellowTeam
team remove blueTeam
team remove blackTeam
team remove cyanTeam
team remove magentaTeam
team remove spectatorTeam

#Remove Scoreboards

