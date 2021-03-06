/**
 * @Function: core::gui::mainmenu::mainMenu
 * @Description: Handles the main menu
 */

#include "..\defines.hpp"
#include "..\..\..\..\macros\ui.hpp"
#include "..\..\..\..\macros\script.hpp"

disableSerialization;
params [["_mode", "", [""]], ["_display", displayNull, [displayNull]]];

__rest_args(_rest, 2);

switch (toLower _mode) do {
	case "onload": {
		[_display, true] call coreGui(displayBlur);
		[] call core(cinematicMode);

		["_purge", _display] call coreGui(mainMenu);

		private _buttons = "[] call compile getText (_x >> 'condition')" configClasses (
			missionConfigFile >> "MainMenuConfig" >> "Buttons"
		) apply {[getText (_x >> "text"), getText (_x >> "action"), getText (_x >> "image")]};

		[_display, _buttons, BUTTON_W, BUTTON_H, BUTTON_MARGIN_W, {
			params ["_w", "_h"];

			[safeZoneX + _CENTER(safeZoneW, _w), safeZoneY + _CENTER(safeZoneH, _h)]
		}] call coreGui(sqrButtonRow);
		
	};
	case "_purge": {
		{ctrlDelete _x} forEach (allControls _display);
	};

	case "onunload": {
		_rest params ["_exitCode"];

		systemChat str _exitCode;

		[false] call core(cinematicMode);
	};
};