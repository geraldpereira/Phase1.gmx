/// Argument0 => autoHealing value 
with(obj_health){
    if (autoHealing != argument0){
        autoHealing = argument0;
        event_user(4);
    }
}
