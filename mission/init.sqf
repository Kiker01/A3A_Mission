enableSaving [false, false]; //сохранение в мультиплеере не нужно
setTerrainGrid 3.125; //отрисовка ландшафта читайте - https://community.bistudio.com/wiki/setTerrainGrid

// Подключение модулей, тут трогать ничего не надо
#include "a3a_modules.hpp"
{
	[] execVM "A3A_MODULES\" + _x + "\init.sqf";
} forEach A3A_MODULES;

sleep 0.1;
enableEnvironment [false, true]; // удаление всей окружающей фауны (скриптовых змей, зайцев, жуков и прочих болезных)

// если вы хотите что-то сюда прописать, пишите ниже

// интроТекст
if (isServer) then {
	[] spawn
	{
	waitUntil {sleep 10; a3a_var_started};
	[parseText "<t font='RobotoCondensedBold' size='3'>Solid Games</t>", true, nil, 7, 2, 0] spawn BIS_fnc_textTiles;
	sleep 7;
	[parseText "<t color='#FF0000' font='RobotoCondensedBold' size='4'>Splashdown</t><br /> By [RAF]KIKER",true, nil, 7, 2, 0] spawn BIS_fnc_textTiles;
	};
};
