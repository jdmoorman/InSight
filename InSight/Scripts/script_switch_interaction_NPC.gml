if (obj_player.eyes_closed == false && interact_open == true) // eyes open
{
    visible = true;
    deadly = true;
}

if (obj_player.eyes_closed == true && interact_closed == true) // eyes closed
{
    visible = true;
    deadly = true;
}

if (obj_player.eyes_closed == false && interact_open == false) // eyes open
{
    visible = false;
    deadly = false;
}

if (obj_player.eyes_closed == true && interact_closed == false) // eyes closed
{
    visible = false;
    deadly = false;
}

