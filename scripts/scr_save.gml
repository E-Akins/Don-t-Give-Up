
save = ds_map_create()

ds_map_add(save,"Music",global.music)
ds_map_add(save,"SFX",global.sfx)
ds_map_add(save,"Fullscreen",global.fullscreen)

ds_map_secure_save(save,"Options.bin")

