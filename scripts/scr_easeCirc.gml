/**
 * 
 * argument0 t current time
 * argument1 b start value
 * argument2 c change in value
 * argument3 d duration
 * @See http://gizma.com/easing/
 */

var t,b,c,d;
t = argument0;
b = argument1;
c = argument2;
d = argument3;

t /= d;
return -c * (sqrt(1 - t * t) - 1) + b;

