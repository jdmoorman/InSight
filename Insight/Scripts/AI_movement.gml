
//falling

//impose maximum falling speed

if (fall_speed>max_fall_speed)

{
    fall_speed=max_fall_speed;
}

//check for and handle vertical collisions or apply vertical movement

if place_free(x,y+fall_speed)

{
    y+=fall_speed;
}

else

{
    if (fall_speed>0)
    {
        move_contact_solid(270,fall_speed);
    }
    else
    {
        move_contact_solid(90,fall_speed);
    }
    fall_speed=0;
}

//apply gravity

fall_speed+=1;

// move towards player
if (distance_to_object(obj_player) < view_xport[0].x / 2)
{
    if (collision_line(x, y, obj_player.x, obj_player.y, obj_block_LOS, false, true) == noone) //Make sure Obstructions to LOS have obj_block_LOS as parent
    {
        move_towards_point(obj_player.x, y, move_speed/10);
    } 
    else
    {
        speed = 0;
    }
}
else
{
    speed = 0;
}
