
if room=editor
{
    with obj_dead_player
    {
        instance_destroy();
    }
    with obj_player
    {
        instance_destroy();
    }
    with obj_floor
    {
        instance_destroy();
    }
    with obj_portal
    {
        instance_destroy();
    }
    with obj_killer
    {
        instance_destroy();
    }
    with obj_kill_no_body
    {
        instance_destroy();
    }
    with obj_inactive_portal
    {
        instance_destroy();
    }
    with obj_button_left
    {
        instance_destroy();
    }
    with obj_button_right
    {
        instance_destroy();
    }
    with obj_grow
    {
        instance_destroy();
    }
    with obj_shrink
    {
        instance_destroy();
    }
    with obj_spring
    {
        instance_destroy();
    }
    with obj_pressure_pad
    {
        instance_destroy();
    }
    with obj_disappearing_floor
    {
        instance_destroy();
    }
    with obj_poison
    {
        instance_destroy();
    }
    instance_activate_all();
}
else
{
    /*if room=s0room0 && 3>global.highest
        global.highest=3;
    else if room=s0room1 && 4>global.highest
        global.highest=4;
    else if room=s0room2 && 5>global.highest
        global.highest=5;
    else if room=s1room0 && 6>global.highest
        global.highest=6;
    else if room=s1room1 && 7>global.highest
        global.highest=7;
    else if room=s1room2 && 8>global.highest
        global.highest=8;
    else if room=s1room3 && 9>global.highest
        global.highest=9;
    else if room=s1room4 && 10>global.highest
        global.highest=10;
    else if room=s1room5 && 11>global.highest
        global.highest=11;
    else if room=s2room0 && 12>global.highest
        global.highest=12;
    else if room=s2room1 && 13>global.highest
        global.highest=13;
    else if room=s2room2 && 14>global.highest
        global.highest=14;
    else if room=s2room3 && 15>global.highest
        global.highest=15;
    else if room=s2room4 && 16>global.highest
        global.highest=16;
    else if room=s2room5 && 17>global.highest
        global.highest=17;
    else if room=s3room0 && 18>global.highest
        global.highest=18;
    else if room=s3room1 && 19>global.highest
        global.highest=19;
    else if room=s3room2 && 20>global.highest
        global.highest=20;
    else if room=s3room3 && 21>global.highest
        global.highest=21;
    else if room=s3room4 && 22>global.highest
        global.highest=22;
    else if room=s3room5 && 23>global.highest
        global.highest=23;
    else if room=s4room0 && 24>global.highest
        global.highest=24;
    else if room=s4room1 && 25>global.highest
        global.highest=25;
    else if room=s4room2 && 26>global.highest
        global.highest=26;
    else if room=s4room3 && 27>global.highest
        global.highest=27;
    else if room=s4room4 && 28>global.highest
        global.highest=28;
    else if room=s4room5 && 29>global.highest
        global.highest=29;
    else if room=s5room0 && 30>global.highest
        global.highest=30;
    else if room=s5room1 && 31>global.highest
        global.highest=31;
    else if room=s5room2 && 32>global.highest
        global.highest=32;
    else if room=s5room3 && 33>global.highest
        global.highest=33;
    else if room=s5room4 && 34>global.highest
        global.highest=34;
    else if room=s5room5 && 35>global.highest
        global.highest=35;
    else if room=s6room0 && 36>global.highest
        global.highest=36;
    else if room=s6room1 && 37>global.highest
        global.highest=37;
    else if room=s6room2 && 38>global.highest
        global.highest=38;
    else if room=s6room3 && 39>global.highest
        global.highest=39;
    else if room=s6room4 && 40>global.highest
        global.highest=40;
    else if room=s6room5 && 41>global.highest
        global.highest=41;
        
    ini_open("SaveGame.sav");
    ini_write_real("Player","Level",global.highest);
    ini_close();
        
    ini_open("SaveGame.sav");
    if ini_read_real("Level",string(room),20)>global.deaths
        ini_write_real("Level",string(room),global.deaths);
    ini_close();
    
    global.deaths=0;*/
    
    room_goto_next();
}
