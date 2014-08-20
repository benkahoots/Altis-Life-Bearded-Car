//Gather Bearded Cat Egg
life_actions = life_actions + [player addAction["Gather Bearded Cat",life_fnc_gatherBeardedCat,"",0,false,false,"",'
!life_action_in_use && (player distance (getMarkerPos "cat_area_1") < 150) && (vehicle player == player) && (life_carryWeight + (["bcegg"] call life_fnc_itemWeight)) <= life_maxWeight ']];
//***Remove this line*** go into case civilian



//Pickup Uncooked Bearded Cat Egg
life_actions = life_actions +
[player addAction["Pickup Bearded Cat Egg",life_fnc_pickupItem,false,0,false,false,"",
' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "bcegg" && (player distance cursorTarget) < 3 && (life_carryWeight + (["bcegg"] call life_fnc_itemWeight)) <= life_maxWeight ']];
//Pickup Cooked Bearded Cat Egg
life_actions = life_actions +
[player addAction["Pickup Processed Meth",life_fnc_pickupItem,true,0,false,false,"",
' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "cbcegg" && (player distance cursorTarget) < 3 && (life_carryWeight + (["cbcegg"] call life_fnc_itemWeight)) <= life_maxWeight ']];
//***Remove this line*** go into lower field process action
