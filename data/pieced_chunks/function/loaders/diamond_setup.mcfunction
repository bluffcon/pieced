particle totem_of_undying ~ ~ ~ 0.3 0.3 0.3 0.2 120 force
kill @e[type=item,distance=..1,nbt={Item:{id:"minecraft:diamond"}}]
tag @s add pieced_chunloader_type_set
tag @s add pieced_chunloader_type_diamond

summon item ~ ~0.7 ~ {Item:{id:"diamond",components:{item_name:{"text":"Diamond [Lv2] Chunk Loader"}}},PickupDelay:-1,Age:-32768,CustomNameVisible:1b,Invulnerable:1b,Tags:[pieced_chunkloader_item],OnGround:1b,HasVisualFire:1b,NoGravity:1b}