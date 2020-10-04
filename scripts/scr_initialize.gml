
randomize();

//Volume Variables; 1 = 100%
global.music = 1
global.sfx = 1

global.fullscreen = false
display_set_gui_size(1920,1080)

// Creates highscore tracker
global.highscore = ds_grid_create(2,10)

// Holds the points after game is finished
global.pointspass = 0

// Load Options
if (file_exists("Options.bin")) scr_load()

// Highscores
highscore_clear()
if (!file_exists("Options.bin"))
{
    ds_grid_set(global.highscore,0,0,"TEM")
    ds_grid_set(global.highscore,1,0,10)
    ds_grid_set(global.highscore,0,1,"PER")
    ds_grid_set(global.highscore,1,1,9)
    ds_grid_set(global.highscore,0,2,"ARP")
    ds_grid_set(global.highscore,1,2,8)
    ds_grid_set(global.highscore,0,3,"MGK")
    ds_grid_set(global.highscore,1,3,7)
    ds_grid_set(global.highscore,0,4,"AAA")
    ds_grid_set(global.highscore,1,4,6)
    ds_grid_set(global.highscore,0,5,"CAP")
    ds_grid_set(global.highscore,1,5,5)
    ds_grid_set(global.highscore,0,6,"KEY")
    ds_grid_set(global.highscore,1,6,4)
    ds_grid_set(global.highscore,0,7,"POP")
    ds_grid_set(global.highscore,1,7,3)
    ds_grid_set(global.highscore,0,8,"JFK")
    ds_grid_set(global.highscore,1,8,2)
    ds_grid_set(global.highscore,0,9,"IRS")
    ds_grid_set(global.highscore,1,9,1)
}

ds_grid_sort(global.highscore,1,false)

// Adds to highscore table
var count = 0
for (var i = 0; i < 10; i++)
{
    var str = ds_grid_get(global.highscore,0,i)
    var numb = ds_grid_get(global.highscore,1,i)
    
    highscore_add(str,numb)   
}

window_set_fullscreen(global.fullscreen)

