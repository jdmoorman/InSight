instance_create(x,y,obj_dead_player);
image_xscale-=.0625;
image_yscale-=.0625;
x=xspawn;
y=yspawn;
fall_speed=0;
alarm[0]=-1;
with obj_poison_timer
    instance_destroy();
    
global.deaths+=1;
    
if global.deaths=13
        global.deaths=0;
        
while !place_free(x,y)
{
    y-=1;
}
