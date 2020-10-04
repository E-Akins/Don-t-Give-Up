
// Downloads file to DS Map
load = ds_map_create()
load = ds_map_secure_load("Options.bin")

global.music = ds_map_find_value(load,"Music")
global.sfx = ds_map_find_value(load,"SFX")
global.fullscreen = ds_map_find_value(load,"Fullscreen")

