/*
File: fn_gatherBeardedCat.sqf

Description:
Gather Bearded Cat Egg
*/
private["_sum"];
_sum = ["bcegg",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
life_action_in_use = true;
titleText["Gathering Bearded Cat Egg...","PLAIN"];
titleFadeOut 5;
sleep 5;
if(([true,"methu",1] call life_fnc_handleInv)) then
{
playSound "bag"; // this only if you want the sound for the bag when you gather it 
titleText["Gathered Bearded Cat Egg","PLAIN"];
};
};

life_action_in_use = false;
