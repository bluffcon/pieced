# when the block is broken or ignited. ran from markers pov

playsound entity.lightning_bolt.impact block @a ~ ~ ~ 0.2 1
particle flash{color:15264496} ~ ~ ~ 0 0 0 1 5 force

kill @e[type=block_display,distance=..0.9]
kill @e[type=item,distance=..2,tag=pieced_chunkloader_item]

execute if entity @s[tag=pieced_chunloader_type_gold] run forceload remove ~ ~ ~ ~
execute if entity @s[tag=pieced_chunloader_type_diamond] run forceload remove ~1 ~1 ~-1 ~-1
execute if entity @s[tag=pieced_chunloader_type_star] run forceload remove ~2 ~2 ~-2 ~-2

# KEEPING LEVELS
    # NONE
    execute if entity @s[tag=!pieced_chunloader_type_gold, tag=!pieced_chunloader_type_diamond, tag=!pieced_chunloader_type_star] run summon item ~ ~ ~ {Item:{"id": "minecraft:armor_stand", "components": {"minecraft:entity_data": { "id": "minecraft:armor_stand", "NoGravity": true,"Tags": ["pieced_chunkloader_temp"],"Invisible": true},"minecraft:item_model": "minecraft:nether_star", "minecraft:item_name": { "text": "Chunk Loader", "color": "gold","italic": false},"minecraft:lore": [{"text": "Upgradeable block that makes chunks around itself load", "color": "gray","italic": false},{"text": "Current Level: ", "extra": [{"text": "NONE","color": "white","italic": false}],"color": "aqua","italic": false},"",{"text": "Pieced - Chunk Loaders", "color": "blue","italic": true}],custom_data:{pieced_loader:none}}}}

    # GOLD
    execute if entity @s[tag=pieced_chunloader_type_gold] run summon item ~ ~ ~ {Item:{"id": "minecraft:armor_stand", "components": {"minecraft:entity_data": { "id": "minecraft:armor_stand", "NoGravity": true,"Tags": [pieced_chunkloader_temp,pieced_chunkloader_stored_gold],"Invisible": true},"minecraft:item_model": "minecraft:gold_ingot", "enchantment_glint_override": true, "minecraft:item_name": { "text": "Chunk Loader", "color": "gold","italic": false},"minecraft:lore": [{"text": "Upgradeable block that makes chunks around itself load", "color": "gray","italic": false},{"text": "Current Level: ", "extra": [{"text": "GOLD (1x1)","color": "gold","italic": false}],"color": "aqua","italic": false},"",{"text": "Pieced - Chunk Loaders", "color": "blue","italic": true}],custom_data:{pieced_loader:gold}}}}

    #DIAMOND
    execute if entity @s[tag=pieced_chunloader_type_diamond] run summon item ~ ~ ~ {Item:{"id": "minecraft:armor_stand", "components": {"minecraft:entity_data": { "id": "minecraft:armor_stand", "NoGravity": true,"Tags": [pieced_chunkloader_temp,pieced_chunkloader_stored_diamond],"Invisible": true},"minecraft:item_model": "minecraft:diamond", "enchantment_glint_override": true, "minecraft:item_name": { "text": "Chunk Loader", "color": "gold","italic": false},"minecraft:lore": [{"text": "Upgradeable block that makes chunks around itself load", "color": "gray","italic": false},{"text": "Current Level: ", "extra": [{"text": "DIAMOND (3x3)","color": "#78b7ff","italic": false}],"color": "aqua","italic": false},"",{"text": "Pieced - Chunk Loaders", "color": "blue","italic": true}],custom_data:{pieced_loader:diamond}}}}

    # STAR
    execute if entity @s[tag=pieced_chunloader_type_star] run tellraw @a {"text":"A Nether Star-level Chunk Loader is being moved somewhere...",color:gold}
    execute if entity @s[tag=pieced_chunloader_type_star] run summon item ~ ~ ~ {Item:{"id": "minecraft:armor_stand", "components": {"minecraft:entity_data": { "id": "minecraft:armor_stand", "NoGravity": true,"Tags": [pieced_chunkloader_temp,pieced_chunkloader_stored_star],"Invisible": true},"minecraft:item_model": "minecraft:beacon", "enchantment_glint_override": true, "minecraft:item_name": { "text": "Chunk Loader", "color": "gold","italic": false},"minecraft:lore": [{"text": "Upgradeable block that makes chunks around itself load", "color": "gray","italic": false},{"text": "Current Level: ", "extra": [{"text": "NETHER STAR [MAX 5x5]","color": "#e4dfda","italic": false}],"color": "aqua","italic": false},"",{"text": "Pieced - Chunk Loaders", "color": "blue","italic": true}],custom_data:{pieced_loader:star}}}}

kill @s
setblock ~ ~ ~ air

