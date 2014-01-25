if (obj_player.eyes_closed == false && interact_open == true) // eyes open
{
    visible = true;
    solid = true;
}

if (obj_player.eyes_closed == true && interact_closed == true) // eyes closed
{
    visible = true;
    solid = true;
}

if (obj_player.eyes_closed == false && interact_open == false) // eyes open
{
    visible = false;
    solid = false;
}

if (obj_player.eyes_closed == true && interact_closed == false) // eyes closed
{
    visible = false;
    solid = false;
}

