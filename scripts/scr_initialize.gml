
randomize();

//Volume Variables; 1 = 100%
global.music = 1
global.sfx = 1

global.fullscreen = false
display_set_gui_size(1920,1080)

// Load Options
if (file_exists("Options.bin")) scr_load()

window_set_fullscreen(global.fullscreen)

