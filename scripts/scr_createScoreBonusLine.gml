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
for (i = 1; i <= pointsCount; i += 1) {
    instance_create(baseX + offsetX * i / pointsCount,baseY  + offsetY * i / pointsCount,obj_scoreBonus);
 
}

//global.maxScore += pointsCount * BONUS_SCORE;
