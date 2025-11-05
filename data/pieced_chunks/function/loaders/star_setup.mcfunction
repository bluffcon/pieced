particle totem_of_undying ~ ~ ~ 0.3 0.3 0.3 0.2 120 force
kill @e[type=item,distance=..1,nbt={Item:{id:"minecraft:nether_star"}}]
tag @s add pieced_chunloader_type_set
tag @s add pieced_chunloader_type_star

summon item ~ ~0.7 ~ {Item:{id:"nether_star",components:{item_name:{"text":"Nether Star [MAX] Chunk Loader"}}},PickupDelay:-1,Age:-32768,CustomNameVisible:1b,Invulnerable:1b,Tags:[pieced_chunkloader_item],OnGround:1b,HasVisualFire:1b,NoGravity:1b}