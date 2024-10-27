
//spawns an easy customer every 8 to 15 seconds
instance_create_depth(x,y,0,obj_easy_customer);
alarm_set(0,random_range(8,15)*60);
