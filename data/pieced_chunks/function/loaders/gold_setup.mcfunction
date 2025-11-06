particle totem_of_undying ~ ~ ~ 0.3 0.3 0.3 0.2 120 force
kill @e[type=item,distance=..1,nbt={Item:{id:"minecraft:gold_ingot",count:1}}]
tag @s add pieced_chunkloader_type_set
tag @s add pieced_chunkloader_type_gold
tag @s add pieced_chunkloader

function pieced_chunks:loops/illegal_items
function pieced_chunks:loops/forceload
# effects and tags
