particle totem_of_undying ~ ~ ~ 0.3 0.3 0.3 0.2 120 force
kill @e[type=item,distance=..1,nbt={Item:{id:"minecraft:nether_star"}}]
tag @s add pieced_chunloader_type_set
tag @s add pieced_chunloader_type_star
tellraw @a {"text":"A Nether Star-level Chunk Loader has been set!","color":"gold"}
# effects and tags
