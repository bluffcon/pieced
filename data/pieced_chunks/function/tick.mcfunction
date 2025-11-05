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
    execute as @e[type=marker,tag=pieced_chunkloader,tag=!pieced_chunloader_type_set] at @s if entity @n[type=item,distance=..1,nbt={Item:{id:"minecraft:gold_ingot"}}] run tag @s add pieced_chunloader_type_gold
    execute as @e[type=marker,tag=pieced_chunkloader,tag=!pieced_chunloader_type_set] at @s if entity @n[type=item,distance=..1,nbt={Item:{id:"minecraft:gold_ingot"}}] run function pieced_chunks:loaders/gold_setup

    # DIAMOND
    execute as @e[type=marker,tag=pieced_chunkloader,tag=!pieced_chunloader_type_set] at @s if entity @n[type=item,distance=..1,nbt={Item:{id:"minecraft:diamond"}}] run tag @s add pieced_chunloader_type_diamond
    execute as @e[type=marker,tag=pieced_chunkloader,tag=!pieced_chunloader_type_set] at @s if entity @n[type=item,distance=..1,nbt={Item:{id:"minecraft:diamond"}}] run function pieced_chunks:loaders/diamond_setup

    # STAR
    execute as @e[type=marker,tag=pieced_chunkloader,tag=!pieced_chunloader_type_set] at @s if entity @n[type=item,distance=..1,nbt={Item:{id:"minecraft:nether_star"}}] run tag @s add pieced_chunloader_type_star
    execute as @e[type=marker,tag=pieced_chunkloader,tag=!pieced_chunloader_type_set] at @s if entity @n[type=item,distance=..1,nbt={Item:{id:"minecraft:nether_star"}}] run function pieced_chunks:loaders/star_setup

# actual forceloading, ticking so that malicious ppl cant unforce chunks BYE PERFORMANCE!!
execute at @e[tag=pieced_chunloader_type_gold,type=marker] run forceload add ~ ~ ~ ~
execute at @e[tag=pieced_chunloader_type_diamond,type=marker] run forceload add ~1 ~1 ~-1 ~-1
execute at @e[tag=pieced_chunloader_type_star,type=marker] run forceload add ~2 ~2 ~-2 ~-2

# checking destroy logic
execute as @e[type=marker,tag=pieced_chunkloader] at @s unless block ~ ~ ~ barrier run function pieced_chunks:loaders/destroy
execute as @e[type=marker,tag=pieced_chunkloader] at @s if block ~ ~1 ~ fire run function pieced_chunks:loaders/destroy

# making sure the item stays within the confines of the chunkloader
#execute as @e[type=item,tag=pieced_chunkloader_item] at @e[type=marker,tag=pieced_chunkloader,distance=..3] run tp @s ~ ~0.7 ~

# execute as @e[type=item,tag=pieced_chunkloader_item] at @s unless entity @e[type=marker,tag=pieced_chunkloader,distance=..3] run tellraw @a {text:"something's messing with the chunkloaders... recovering!"}
execute as @e[type=item,tag=pieced_chunkloader_item] at @s unless entity @e[type=marker,tag=pieced_chunkloader,distance=..3] run kill @s

# recovering items for
    # gold
    execute as @e[type=marker,tag=pieced_chunkloader,tag=pieced_chunloader_type_gold] at @s unless entity @e[type=item,tag=pieced_chunkloader_item,distance=..3] run summon item ~ ~0.7 ~ {Item:{id:"gold_ingot",components:{item_name:{"text":"Gold [Lv1] Chunk Loader"}}},PickupDelay:-1,Age:-32768,CustomNameVisible:1b,Invulnerable:1b,Tags:[pieced_chunkloader_item],OnGround:1b,HasVisualFire:1b,NoGravity:1b}

    # diamond
    execute as @e[type=marker,tag=pieced_chunkloader,tag=pieced_chunloader_type_diamond] at @s unless entity @e[type=item,tag=pieced_chunkloader_item,distance=..3] run summon item ~ ~0.7 ~ {Item:{id:"diamond",components:{item_name:{"text":"Diamond [Lv2] Chunk Loader"}}},PickupDelay:-1,Age:-32768,CustomNameVisible:1b,Invulnerable:1b,Tags:[pieced_chunkloader_item],OnGround:1b,HasVisualFire:1b,NoGravity:1b}

    # star
    execute as @e[type=marker,tag=pieced_chunkloader,tag=pieced_chunloader_type_diamond] at @s unless entity @e[type=item,tag=pieced_chunkloader_item,distance=..3] run summon item ~ ~0.7 ~ {Item:{id:"nether_star",components:{item_name:{"text":"Nether Star [MAX] Chunk Loader"}}},PickupDelay:-1,Age:-32768,CustomNameVisible:1b,Invulnerable:1b,Tags:[pieced_chunkloader_item],OnGround:1b,HasVisualFire:1b,NoGravity:1b}
#


# tips
execute as @a at @s if entity @e[distance=..1.5,type=marker,tag=!pieced_chunkloader_type_set] run title @s actionbar {"text":"This is an inactive Chunk Loader. Throw Gold, Diamond, or a Nether Star at it to activate. Ignite it to pick up.", color:gold} 
execute as @a at @s if entity @e[distance=..1.5,type=marker,tag=pieced_chunkloader,tag=pieced_chunloader_type_gold] run title @s actionbar {"text":"This is a starter Chunk Loader. It loads only the chunk it's in. It was made with a Gold Ingot. Ignite to pick up.", color:gold} 
execute as @a at @s if entity @e[distance=..1.5,type=marker,tag=pieced_chunkloader,tag=pieced_chunloader_type_diamond] run title @s actionbar {"text":"This is an upgraded Chunk Loader. It loads in a 3x3 area. It was made with a Diamond. Ignite to pick up.", color:gold} 
execute as @a at @s if entity @e[distance=..1.5,type=marker,tag=pieced_chunkloader,tag=pieced_chunloader_type_star] run title @s actionbar {"text":"This is a maxed out Chunk Loader. It loads in a 5x5 area. It was made with a Nether Star. Everyone will know if you'll try to pick this up.", color:gold} 