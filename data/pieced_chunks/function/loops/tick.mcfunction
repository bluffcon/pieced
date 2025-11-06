# ticking but every 4 ticks so its semi non laggy

# summon marker with type tag based on stored tag
execute as @e[type=armor_stand,tag=pieced_chunkloader_temp,tag=!pieced_chunkloader_stored_gold,tag=!pieced_chunkloader_stored_diamond,tag=!pieced_chunkloader_stored_star] at @s run summon marker ~ ~0.5 ~ {Tags:[pieced_chunkloader],CustomName:{"text":"Chunk Loader GENERIC"}}
execute as @e[type=armor_stand,tag=pieced_chunkloader_temp,tag=pieced_chunkloader_stored_gold] at @s run summon marker ~ ~0.5 ~ {Tags:[pieced_chunkloader,pieced_chunkloader_type_gold,pieced_chunkloader_type_set],CustomName:{"text":"Chunk Loader GOLD"}}
execute as @e[type=armor_stand,tag=pieced_chunkloader_temp,tag=pieced_chunkloader_stored_diamond] at @s run summon marker ~ ~0.5 ~ {Tags:[pieced_chunkloader,pieced_chunkloader_type_diamond,pieced_chunkloader_type_set],CustomName:{"text":"Chunk Loader DIAMOND"}}
execute as @e[type=armor_stand,tag=pieced_chunkloader_temp,tag=pieced_chunkloader_stored_star] at @s run summon marker ~ ~0.5 ~ {Tags:[pieced_chunkloader,pieced_chunkloader_type_star,pieced_chunkloader_type_set],CustomName:{"text":"Chunk Loader STAR"}}

# setup
execute at @e[type=armor_stand,tag=pieced_chunkloader_temp,limit=1] as @n[type=marker,tag=pieced_chunkloader] run function pieced_chunks:loaders/generic_setup

# make item run function
execute as @e[type=marker,tag=pieced_chunkloader,tag=!pieced_chunkloader_type_set] at @s if entity @n[type=item,distance=..1,nbt={Item:{id:"minecraft:gold_ingot",count:1}}] run function pieced_chunks:loaders/gold_setup
execute as @e[type=marker,tag=pieced_chunkloader,tag=!pieced_chunkloader_type_set] at @s if entity @n[type=item,distance=..1,nbt={Item:{id:"minecraft:diamond",count:1}}] run function pieced_chunks:loaders/diamond_setup
execute as @e[type=marker,tag=pieced_chunkloader,tag=!pieced_chunkloader_type_set] at @s if entity @n[type=item,distance=..1,nbt={Item:{id:"minecraft:nether_star",count:1}}] run function pieced_chunks:loaders/star_setup_first


# checking destroy logic
execute as @e[type=marker,tag=pieced_chunkloader] at @s unless block ~ ~ ~ barrier run function pieced_chunks:loaders/destroy
execute as @e[type=marker,tag=pieced_chunkloader] at @s if block ~ ~1 ~ fire run function pieced_chunks:loaders/destroy


schedule function pieced_chunks:loops/tick 4t replace
