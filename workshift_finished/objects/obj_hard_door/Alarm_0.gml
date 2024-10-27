
//spawns a hard customer every 15 to 25 seconds
alarm_set(0,random_range(15,25)*60);
instance_create_depth(x,y,0,obj_hard_customer);
