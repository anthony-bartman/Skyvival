#Resets all chests if armor stand has none
function skyisland:teams/ivy/loot/populate

#Above Ground
execute at @e[tag=ivy_cloud] run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=ivy_cloud] run kill @e[type=item,distance=..4]
execute at @e[tag=ivy_cloudT2] run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=ivy_cloudT2] run kill @e[type=item,distance=..4]
execute at @e[tag=ivy_cloudT3] run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=ivy_cloudT3] run kill @e[type=item,distance=..4]

execute at @e[tag=ivy_treetop] run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=ivy_treetop] run kill @e[type=item,distance=..4]

execute at @e[tag=ivy_tower] run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=ivy_tower] run kill @e[type=item,distance=..4]
execute at @e[tag=ivy_towerT1] run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=ivy_towerT1] run kill @e[type=item,distance=..4]
execute at @e[tag=ivy_towerT2] run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=ivy_towerT2] run kill @e[type=item,distance=..4]

execute at @e[tag=ivy_surf] run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=ivy_surf] run kill @e[type=item,distance=..4]
execute at @e[tag=ivy_surfT1] run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=ivy_surfT1] run kill @e[type=item,distance=..4]

execute at @e[tag=ivy_moss] run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=ivy_moss] run kill @e[type=item,distance=..4]
execute at @e[tag=ivy_mossT2] run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=ivy_mossT2] run kill @e[type=item,distance=..4]

execute at @e[tag=ivy_volc] run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=ivy_volc] run kill @e[type=item,distance=..4]
execute at @e[tag=ivy_volcT2] run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=ivy_volcT2] run kill @e[type=item,distance=..4]
execute at @e[tag=ivy_volcT3] run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=ivy_volcT3] run kill @e[type=item,distance=..4]

#Below Ground
execute at @e[tag=ivy_vc] run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=ivy_vc] run kill @e[type=item,distance=..4]
execute at @e[tag=ivy_vcT1] run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=ivy_vcT1] run kill @e[type=item,distance=..4]
execute at @e[tag=ivy_vcT2] run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=ivy_vcT2] run kill @e[type=item,distance=..4]

execute at @e[tag=ivy_c1] run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=ivy_c1] run kill @e[type=item,distance=..4]
execute at @e[tag=ivy_c1T2] run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=ivy_c1T2] run kill @e[type=item,distance=..4]

execute at @e[tag=ivy_r1] run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=ivy_r1] run kill @e[type=item,distance=..4]
execute at @e[tag=ivy_r1T2] run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=ivy_r1T2] run kill @e[type=item,distance=..4]
execute at @e[tag=ivy_r1T3] run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=ivy_r1T3] run kill @e[type=item,distance=..4]

execute at @e[tag=ivy_r2] run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=ivy_r2] run kill @e[type=item,distance=..4]
execute at @e[tag=ivy_r2T3] run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=ivy_r2T3] run kill @e[type=item,distance=..4]

execute at @e[tag=ivy_bone] run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=ivy_bone] run kill @e[type=item,distance=..4]

execute at @e[tag=ivy_tpT3] run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=ivy_tpT3] run kill @e[type=item,distance=..4]

execute at @e[tag=ivy_secret] run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=ivy_secret] run kill @e[type=item,distance=..4]

execute at @e[tag=ivy_spnT3] run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=ivy_spnT3] run kill @e[type=item,distance=..4]

execute at @e[tag=ivy_towerS1] run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=ivy_towerS1] run kill @e[type=item,distance=..4]
execute at @e[tag=ivy_towerS2] run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=ivy_towerS2] run kill @e[type=item,distance=..4]

execute at @e[tag=ivy_eT3] run setblock ~ ~ ~ minecraft:air destroy
execute at @e[tag=ivy_eT3] run kill @e[type=item,distance=..4]

#Kills all loot table armorstands for LAG purposes
kill @e[tag=ivy_cloud,distance=..150]
kill @e[tag=ivy_cloudT2,distance=..150]
kill @e[tag=ivy_cloudT3,distance=..150]
kill @e[tag=ivy_treetop,distance=..150]
kill @e[tag=ivy_tower,distance=..150]
kill @e[tag=ivy_towerT1,distance=..150]
kill @e[tag=ivy_towerT2,distance=..150]
kill @e[tag=ivy_surf,distance=..150]
kill @e[tag=ivy_surfT1,distance=..150]
kill @e[tag=ivy_moss,distance=..150]
kill @e[tag=ivy_mossT2,distance=..150]
kill @e[tag=ivy_volc,distance=..150]
kill @e[tag=ivy_volcT2,distance=..150]
kill @e[tag=ivy_volcT3,distance=..150]
kill @e[tag=ivy_vc,distance=..150]
kill @e[tag=ivy_c1,distance=..150]
kill @e[tag=ivy_c1T2,distance=..150]
kill @e[tag=ivy_bone,distance=..150]
kill @e[tag=ivy_r1,distance=..150]
kill @e[tag=ivy_r2,distance=..150]
kill @e[tag=ivy_vcT1,distance=..150]
kill @e[tag=ivy_vcT2,distance=..150]
kill @e[tag=ivy_r1T2,distance=..150]
kill @e[tag=ivy_r1T3,distance=..150]
kill @e[tag=ivy_r2T3,distance=..150]
kill @e[tag=ivy_tpT3,distance=..150]
kill @e[tag=ivy_secret,distance=..150]
kill @e[tag=ivy_spnT3,distance=..150]
kill @e[tag=ivy_towerS1,distance=..150]
kill @e[tag=ivy_towerS2,distance=..150]
kill @e[tag=ivy_eT3,distance=..150]
setblock ~-24 ~-10 ~1 minecraft:air destroy
