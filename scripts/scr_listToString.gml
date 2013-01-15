//argument0 => the list

var str; str = "[";
var i;
for (i = 0; i < ds_list_size(argument0); i += 1){
    str += string(ds_list_find_value(argument0,i)) + ",";
}

str += "]";

return str;
