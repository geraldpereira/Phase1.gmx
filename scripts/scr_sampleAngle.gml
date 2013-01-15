// argument0 => raw angle
// return sampled angle

var angle; angle = argument0;
var anglesCount; anglesCount = floor(angle / CTRL_ANGLE_PRECISION);
var modulo; modulo = angle % CTRL_ANGLE_PRECISION;
var sampledAngle; sampledAngle = anglesCount * CTRL_ANGLE_PRECISION;
if (modulo >= CTRL_ANGLE_PRECISION / 2){
    sampledAngle += CTRL_ANGLE_PRECISION;      
}
sampledAngle = sampledAngle % 360;

return sampledAngle;
