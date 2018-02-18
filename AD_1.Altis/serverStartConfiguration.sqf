#include "script_macros.hpp"
/*
*   @File: serverStartConfiguration.sqf
*   @Author: Sig
*
*   Description: Variable configration for server start
*/

globalAdminList = [ "76561198155549446", "76561198228746052", "76561198024533482", "76561198204210015", "76561198139474451", "76561198329029693", "76561198143158147", "76561198105891904",
 "76561198154395316", "76561198347694736", "76561198097776708" ];
publicVariable "globalAdminList";

minCapTime = 20;
maxCapTime = 60;
attackerSide = west;
publicVariable "minCapTime";
publicVariable "maxCapTime";
publicVariable "attackerSide";

minDistFactors = [1, 0.7, 0.55, 1];
publicVariable "minDistFactors";

fnc_getSqrDist = DFUNC(getSqrDist);
fnc_cleanName = DFUNC(cleanName);
fnc_airDistance = { sqrt (_this call DFUNC(getSqrDist)) };
fnc_isCapturing = DFUNC(isCapturing);
fnc_vehicleAllowDamage = DFUNC(vehicleAllowDamage);
fnc_minGroupSize = { private _minGroupSize = (playersNumber (attackerSide)) / 3; _minGroupSize min 3 };
fnc_deleteOldBody = DFUNC(deleteOldBody);
fnc_addRadio = {};
fnc_assigngear = DFUNC(assignGear);

publicVariable "fnc_getSqrDist";
publicVariable "fnc_cleanName";
publicVariable "fnc_airDistance";
publicVariable "fnc_isCapturing";
publicVariable "fnc_vehicleAllowDamage";
publicVariable "fnc_minGroupSize";
publicVariable "fnc_deleteOldBody";
publicVariable "fnc_addRadio";
publicVariable "fnc_assignGear";
