//argument0 => force factor (depends on the distance between the object and the target)
//argument1 => impulse factor 
//argument2 => targetX optional (mouse_x)
//argument3 => targetY optional (mouse_y)
//argument4 => localX
//argument5 => localY

var forceFactor, impulseFactor, targetX, targetY, localX, localY, deltaX, deltaY;

forceFactor = argument0;
impulseFactor = argument1;
targetX = argument2;
targetY = argument3;
localX = argument4;
localY = argument5;

if (targetX == 0){
    targetX = mouse_x;
}

if (targetY == 0){
    targetY = mouse_y;
}

deltaX = targetX - x;

deltaY = targetY - y;

// Move EDE        
physics_apply_local_force(localX, localY, forceFactor * deltaX, forceFactor * deltaY);

var angleDegrees;
angleDegrees = point_direction(x, y, targetX, targetY);
var angleRad;
angleRad = degtorad(angleDegrees); 
physics_apply_local_impulse(localX, localY, impulseFactor * cos(angleRad), - impulseFactor * sin(angleRad));
