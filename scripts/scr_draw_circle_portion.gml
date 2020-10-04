///draw_circle_portion(x,y,fillpercentage,color,radius,startangle)

var focus, vx, vy

if argument2 > 0
{
    draw_set_color(argument3)
    
    draw_primitive_begin(pr_trianglefan)
    draw_vertex(argument0,argument1)
    
    for(i = 0; i <= (argument2*60); i++;)
    {
        focus = -i * 6 + argument5
        vx = lengthdir_x(argument4,focus)
        vy = lengthdir_y(argument4,focus)
        draw_vertex(argument0 + vx, argument1 + vy)
    }
    draw_primitive_end();   
}



