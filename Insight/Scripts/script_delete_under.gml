holdx=x;
holdy=y;
x+=100;
instance_deactivate_object(obj_creator);
position_destroy(holdx,holdy);
instance_activate_object(obj_creator);
x-=100;
