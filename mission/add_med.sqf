//Здесь указываете количество медицины, которое необходимо выдать бойцам

if (!isServer) exitWith {};
{	
	// снаряжение, выдаваемое всем игрокам в униформу
	(uniformContainer _x) additemcargoGlobal ["ACE_quikclot", 3];
	(uniformContainer _x) additemcargoGlobal ["ACE_fieldDressing", 3];
	(uniformContainer _x) additemcargoGlobal ["ACE_elasticBandage", 3];
	(uniformContainer _x) additemcargoGlobal ["ACE_packingBandage", 3];
	(uniformContainer _x) additemcargoGlobal ["ACE_morphine", 2];
	(uniformContainer _x) additemcargoGlobal ["ACE_tourniquet", 1];
	(uniformContainer _x) additemcargoGlobal ["ACE_epinephrine", 2];
	(uniformContainer _x) additemcargoGlobal ["ACE_EarPlugs", 1];

	// в случае, если игрок - медик. Не забудьте вписать ему строчку в инит (без кавычек): "0 = [this] execVM "add_med_med.sqf";"
	if (_x getVariable "ACEMED" > 0) then {
		clearItemCargoGlobal (backpackContainer _x);
		clearMagazineCargoGlobal (backpackContainer _x);
		clearWeaponCargoGlobal (backpackContainer _x);
		(backpackContainer _x) additemcargoGlobal ["ACE_fieldDressing",10];
		(backpackContainer _x) additemcargoGlobal ["ACE_elasticBandage",10];
		(backpackContainer _x) additemcargoGlobal ["ACE_packingBandage",10];
		(backpackContainer _x) additemcargoGlobal ["ACE_quikclot",10];
		(backpackContainer _x) additemcargoGlobal ["ACE_epinephrine",10];
		(backpackContainer _x) additemcargoGlobal ["ACE_morphine",10];
		(backpackContainer _x) additemcargoGlobal ["ACE_salineIV_500",5];
		(backpackContainer _x) additemcargoGlobal ["ACE_surgicalKit",1];
		(backpackContainer _x) additemcargoGlobal ["ACE_personalAidKit",5];
	};
} forEach playableUnits;