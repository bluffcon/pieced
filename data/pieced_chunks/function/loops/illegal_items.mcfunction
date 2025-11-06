execute as @e[type=item,tag=pieced_chunkloader_item] at @s unless entity @e[type=marker,tag=pieced_chunkloader,distance=..2] run kill @s

# recovering items for
    # gold
    execute as @e[type=marker,tag=pieced_chunkloader,tag=pieced_chunloader_type_gold] at @s unless entity @e[type=item,tag=pieced_chunkloader_item,distance=..2] run summon item ~ ~0.7 ~ {Item:{id:"gold_ingot",components:{item_name:{"text":"Gold [Lv1] Chunk Loader"}}},PickupDelay:-1,Age:-32768,CustomNameVisible:1b,Invulnerable:1b,Tags:[pieced_chunkloader_item],OnGround:1b,HasVisualFire:1b,NoGravity:1b}

    # diamond
    execute as @e[type=marker,tag=pieced_chunkloader,tag=pieced_chunloader_type_diamond] at @s unless entity @e[type=item,tag=pieced_chunkloader_item,distance=..2] run summon item ~ ~0.7 ~ {Item:{id:"diamond",components:{item_name:{"text":"Diamond [Lv2] Chunk Loader"}}},PickupDelay:-1,Age:-32768,CustomNameVisible:1b,Invulnerable:1b,Tags:[pieced_chunkloader_item],OnGround:1b,HasVisualFire:1b,NoGravity:1b}

    # star
    execute as @e[type=marker,tag=pieced_chunkloader,tag=pieced_chunloader_type_star] at @s unless entity @e[type=item,tag=pieced_chunkloader_item,distance=..2] run summon item ~ ~0.7 ~ {Item:{id:"nether_star",components:{item_name:{"text":"Nether Star [MAX] Chunk Loader"}}},PickupDelay:-1,Age:-32768,CustomNameVisible:1b,Invulnerable:1b,Tags:[pieced_chunkloader_item],OnGround:1b,HasVisualFire:1b,NoGravity:1b}
#

schedule function pieced_chunks:loops/illegal_items 5s replace