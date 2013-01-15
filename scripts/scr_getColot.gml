// argument0 color from
// argument1 color to
// argument2 currentDelay
// argument3 delay

var colorFromR, colorFromG, colorFromB;
colorFromR = color_get_red(argument0);
colorFromG = color_get_green(argument0);
colorFromB = color_get_blue(argument0);

var colorToR, colorToG, colorToB;
colorToR = color_get_red(argument1);
colorToG = color_get_green(argument1);
colorToB = color_get_blue(argument1);

var currentDelay; currentDelay = argument2;
var delay; delay = argument3;

var colorR, colorG, colorB;
    
colorR = ceil(colorFromR + ((colorToR - colorFromR) * currentDelay / delay));
colorG = ceil(colorFromG + ((colorToG - colorFromG) * currentDelay / delay));
colorB = ceil(colorFromB + ((colorToB - colorFromB) * currentDelay / delay));
    
return make_color_rgb(colorR,colorG,colorB);
