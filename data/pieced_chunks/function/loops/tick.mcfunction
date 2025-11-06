# ticking but every 4 ticks so its semi non laggy

# spawning chunkloader from craftable armostand (/recipes/chunk_loader.json)
execute as @e[type=armor_stand,tag=pieced_chunkloader_temp] run tag @s add pieced_chunkloader
execute as @e[type=armor_stand,tag=pieced_chunkloader_temp,tag=pieced_chunkloader_stored_gold] at @s run function pieced_chunks:loaders/gold_setup
execute as @e[type=armor_stand,tag=pieced_chunkloader_temp,tag=pieced_chunkloader_stored_diamond] at @s run function pieced_chunks:loaders/diamond_setup
execute as @e[type=armor_stand,tag=pieced_chunkloader_temp,tag=pieced_chunkloader_stored_star] at @s run function pieced_chunks:loaders/star_setup

    #summon actual marker entity for the chunkloader, this is the actual chunkloader
    execute as @e[type=armor_stand,tag=pieced_chunkloader] at @s run summon marker ~ ~0.5 ~ {Tags:[pieced_chunkloader],CustomName:{"text":"Chunk Loader"}}
    execute as @e[type=armor_stand,tag=pieced_chunkloader] at @s run function pieced_chunks:loaders/generic_setup

execute as @e[type=armor_stand,tag=pieced_chunkloader_temp] run kill @s

# SETUPS
    # GOLD
    execute as @e[type=marker,tag=pieced_chunkloader,tag=!pieced_chunloader_type_set] at @s if entity @n[type=item,distance=..1,nbt={Item:{id:"minecraft:gold_ingot"}}] run function pieced_chunks:loaders/gold_setup

    # DIAMOND
    execute as @e[type=marker,tag=pieced_chunkloader,tag=!pieced_chunloader_type_set] at @s if entity @n[type=item,distance=..1,nbt={Item:{id:"minecraft:diamond"}}] run function pieced_chunks:loaders/diamond_setup

    # STAR
    execute as @e[type=marker,tag=pieced_chunkloader,tag=!pieced_chunloader_type_set] at @s if entity @n[type=item,distance=..1,nbt={Item:{id:"minecraft:nether_star"}}] run function pieced_chunks:loaders/star_setup
#


# checking destroy logic
execute as @e[type=marker,tag=pieced_chunkloader] at @s unless block ~ ~ ~ barrier run function pieced_chunks:loaders/destroy
execute as @e[type=marker,tag=pieced_chunkloader] at @s if block ~ ~1 ~ fire run function pieced_chunks:loaders/destroy


schedule function pieced_chunks:loops/tick 4t replace