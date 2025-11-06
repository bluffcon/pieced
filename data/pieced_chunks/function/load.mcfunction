function pieced_chunks:loops/tick

# 60 second loop to reforceload every chunkloader
function pieced_chunks:loops/forceload

# check if items are illegal every 10 seconds
function pieced_chunks:loops/illegal_items

# show tips every 5 ticks
function pieced_chunks:loops/tips

tellraw @a [{"text":"[","color":"yellow"},{"text":"Pieced","underlined":true,"color":"gold","click_event":{"action":"open_url","url":"https://modrinth.com/datapack/pieced-chunk-loaders"}},{"text":"] ","color":"yellow"},{"text":"- ","color":"white"},{"text":"Chunk Loaders loaded! ","color":"yellow"},{"text":"Click for info!","color":"white","underlined":true,"click_event":{"action":"open_url","url":"https://modrinth.com/datapack/pieced-chunk-loaders"},"hover_event":{"action":"show_text","value":"Opens Modrinth"}}]