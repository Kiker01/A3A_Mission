
enableSaving [false, false]; //сохранение в мультиплеере не нужно

0 = execVM "add_med.sqf"; //подключение скрипта выдачи медицины

setTerrainGrid 3.125; //отрисовка ландшафта читайте - https://community.bistudio.com/wiki/setTerrainGrid

// Подключение модулей, тут трогать ничего не надо

#include "a3a_modules.hpp"
{
	[] execVM "A3A_MODULES\" + _x + "\init.sqf";
} forEach A3A_MODULES;

if (!isDedicated) then {	
	waitUntil {!(isNull player)};
	player addEventHandler ["inventoryOpened","_nul=execVM 'script.sqf'"];
};

sleep 0.1;
enableEnvironment [false, true]; // удаление всей окружающей фауны (скриптовых змей, зайцев, жуков и прочих болезных)

// если вы хотите что-то сюда прописать, пишите ниже

