// Arg0 => number of points 
// Arg1 => x base position
// Arg2 => y base position
// Arg3 => x offset
// Arg4 => y offset

var pointsCount;
pointsCount = argument0;
var baseX;
baseX = argument1;
var baseY;
baseY = argument2 - argument4 / 2;
var offsetX;
offsetX = argument3;
var offsetY;
offsetY = argument4;

var i;
for (i = 1; i <= pointsCount; i += 1){
    var ySin;
    var xSin;
    var curX;
    var curY;
    
    ySin = i * 2 * pi / pointsCount;
    xSin = (1 + sin(ySin - (pi / 2)));
    curX = baseX + offsetX / (pointsCount / i) * (xSin / 2);
    curY = baseY + offsetY / (pointsCount / i);
    instance_create(curX, curY,obj_scoreBonus);
}

//global.maxScore += pointsCount * BONUS_SCORE;
