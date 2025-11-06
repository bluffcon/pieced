# shows tick to players near chunkloaders

# none
execute at @e[type=marker,tag=!pieced_chunkloader_type_set] as @a[distance=..1.7] run title @s actionbar {"text":"This is an inactive Chunk Loader. Throw Gold, Diamond, or a Nether Star at it to activate. Ignite it to pick up.", color:gold} 

# gold
execute at @e[type=marker,tag=pieced_chunkloader_type_gold] as @a[distance=..1.7] run title @s actionbar {"text":"This is a starter Chunk Loader. It loads only the chunk it's in. It was made with a Gold Ingot. Ignite to pick up.", color:gold} 

# diamond
execute at @e[type=marker,tag=pieced_chunkloader_type_diamond] as @a[distance=..1.7] run title @s actionbar {"text":"This is an upgraded Chunk Loader. It loads in a 3x3 area. It was made with a Diamond. Ignite to pick up.", color:gold} 

# star
execute at @e[type=marker,tag=pieced_chunkloader_type_star] as @a[distance=..1.7] run title @s actionbar {"text":"This is a maxed out Chunk Loader. It loads in a 5x5 area. It was made with a Nether Star. Everyone will know if you'll try to pick this up.", color:gold} 

schedule function pieced_chunks:loops/tips 5t replace