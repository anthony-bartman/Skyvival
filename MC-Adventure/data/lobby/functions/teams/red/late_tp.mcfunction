#--------------------------------------
# Author: Anthony Bartman
# Date Edited: 2-2-20
# Desc: This will teleport players on a team to the map
#--------------------------------------

#Check if player has choosen a kit
execute if score kitsEnabled lobbySettings matches 0 run clear @s 
execute if score kitsEnabled lobbySettings matches 0 run effect clear @s
execute if score kitsEnabled lobbySettings matches 0 run advancement revoke @s everything
execute if score kitsEnabled lobbySettings matches 0 run recipe take @s *
#Update Players
execute if score kitsEnabled lobbySettings matches 0 run title @s subtitle ["",{"text":"To "},{"text":"Red Team's ","color":"red","bold":true},{"text":"Spawnpoint"}]
execute if score kitsEnabled lobbySettings matches 0 run title @s title ["",{"text":"Teleporting ","bold":true,"color":"white"}]
execute if score kitsEnabled lobbySettings matches 0 run title @a[team=redTeam,tag=!newbie] title {"selector":"@s","bold":true}
execute if score kitsEnabled lobbySettings matches 0 run title @a[team=redTeam,tag=!newbie] subtitle [{"text":"Has Joined ","color":"white","bold":true},{"text":"Red Team","color":"red","bold":false,"italic":true}]
execute if score kitsEnabled lobbySettings matches 0 run tag @s remove newbie
#Populates Skyisland Map
execute if score kitsEnabled lobbySettings matches 0 if score redMP mapProgress matches -1 as @s run function skyisland:setup/begin_book
execute if score kitsEnabled lobbySettings matches 0 if score redMP mapProgress matches -1 run scoreboard players enable @s help
execute if score kitsEnabled lobbySettings matches 0 run function lobby:teams/red/teamspawn


#Check if player has choosen a kit
execute if score kitsEnabled lobbySettings matches 1 if score @s chooseKit matches 1.. run clear @s 
execute if score kitsEnabled lobbySettings matches 1 if score @s chooseKit matches 1.. run effect clear @s
execute if score kitsEnabled lobbySettings matches 1 if score @s chooseKit matches 1.. run advancement revoke @s everything
execute if score kitsEnabled lobbySettings matches 1 if score @s chooseKit matches 1.. run recipe take @s *
#Update Players
execute if score kitsEnabled lobbySettings matches 1 if score @s chooseKit matches 1.. run title @s subtitle ["",{"text":"To "},{"text":"Red Team's ","color":"red","bold":true},{"text":"Spawnpoint"}]
execute if score kitsEnabled lobbySettings matches 1 if score @s chooseKit matches 1.. run title @s title ["",{"text":"Teleporting ","bold":true,"color":"white"}]
execute if score kitsEnabled lobbySettings matches 1 if score @s chooseKit matches 1.. run title @a[team=redTeam,tag=!newbie] title {"selector":"@s","bold":true}
execute if score kitsEnabled lobbySettings matches 1 if score @s chooseKit matches 1.. run title @a[team=redTeam,tag=!newbie] subtitle [{"text":"Has Joined ","color":"white","bold":true},{"text":"Red Team","color":"red","bold":false,"italic":true}]
execute if score kitsEnabled lobbySettings matches 1 if score @s chooseKit matches 1.. run tag @s remove newbie
execute if score kitsEnabled lobbySettings matches 1 if score @s chooseKit matches 1.. if score redMP mapProgress matches -1 as @s run function skyisland:setup/begin_book
execute if score kitsEnabled lobbySettings matches 1 if score @s chooseKit matches 1.. if score redMP mapProgress matches -1 run scoreboard players enable @s help
execute if score kitsEnabled lobbySettings matches 1 if score @s chooseKit matches 1.. run function lobby:teams/red/teamspawn

#Player has not chooose a kit
execute if score kitsEnabled lobbySettings matches 1 if score @s chooseKit matches 0 run title @s subtitle {"text":"Before Starting Map"}
execute if score kitsEnabled lobbySettings matches 1 if score @s chooseKit matches 0 run title @s title {"text":"Select A Kit","color":"yellow","bold":true}
execute if score kitsEnabled lobbySettings matches 1 if score @s chooseKit matches 0 run teleport @s @e[type=minecraft:armor_stand,tag=mainLobby,limit=1]
