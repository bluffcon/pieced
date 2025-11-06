# forceloads everyhting. rarely

execute at @e[tag=pieced_chunkloader_type_gold,type=marker] run forceload add ~ ~ ~ ~
execute at @e[tag=pieced_chunkloader_type_diamond,type=marker] run forceload add ~16 ~16 ~-16 ~-16
execute at @e[tag=pieced_chunkloader_type_star,type=marker] run forceload add ~32 ~32 ~-32 ~-32

schedule function pieced_chunks:loops/forceload 60s replace