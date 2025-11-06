setblock ~ ~ ~ barrier keep
function pieced_chunks:loader_model

execute if entity @s[type=marker,tag=pieced_chunkloader_type_gold] run function pieced_chunks:loaders/gold_setup
execute if entity @s[type=marker,tag=pieced_chunkloader_type_diamond] run function pieced_chunks:loaders/diamond_setup
execute if entity @s[type=marker,tag=pieced_chunkloader_type_star] run function pieced_chunks:loaders/star_setup

kill @n[type=armor_stand,tag=pieced_chunkloader_temp]

