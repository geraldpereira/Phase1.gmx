// This script is used to create random movement for any exploding player part (EDE body and wings)
// Arg0 => move factor
// Arg1 => rotation factor

// Push it towards the center of the room
var angleDegrees;
angleDegrees = point_direction(x, y, random(room_width), random(room_height));
var angleRad;
angleRad = degtorad(angleDegrees); 
physics_apply_local_impulse(0, 0, argument0 * cos(angleRad), - argument0 * sin(angleRad));
    
// Make it rotate over itself
var xDelta;
xDelta = 1;
if x < room_width / 2{
    xDelta = -1;
}
physics_apply_local_impulse(sprite_width / 2 * xDelta, 0,argument1 * cos(angleRad), - argument1 * sin(angleRad));
