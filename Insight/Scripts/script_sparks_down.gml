count=0;

while(count<30)
{
    count+=1;
    instance_create(x+sprite_width/4+irandom(sprite_width/2),y+sprite_height,obj_spark_down);
}