_BaseMed_processor = {
	_ACE_quikclot		=	"ACE_quikclot" call A3A_fnc_Modules_GetMedSettings;
	_ACE_fieldDressing	=	"ACE_fieldDressing" call A3A_fnc_Modules_GetMedSettings;
	_ACE_elasticBandage	=	"ACE_elasticBandage" call A3A_fnc_Modules_GetMedSettings;
	_ACE_packingBandage	=	"ACE_packingBandage" call A3A_fnc_Modules_GetMedSettings;
	_ACE_morphine		=	"ACE_morphine" call A3A_fnc_Modules_GetMedSettings;
	_ACE_tourniquet		=	"ACE_tourniquet" call A3A_fnc_Modules_GetMedSettings;
	_ACE_epinephrine	=	"ACE_epinephrine" call A3A_fnc_Modules_GetMedSettings;
	_ACE_EarPlugs		=	"ACE_EarPlugs" call A3A_fnc_Modules_GetMedSettings;
	
	if (_ACE_quikclot > 0) then {(uniformContainer _this) additemcargoGlobal ["ACE_quikclot", _ACE_quikclot];};
	if (_ACE_fieldDressing > 0) then {(uniformContainer _this) additemcargoGlobal ["ACE_fieldDressing", _ACE_fieldDressing];};
	if (_ACE_elasticBandage > 0) then {(uniformContainer _this) additemcargoGlobal ["ACE_elasticBandage", _ACE_elasticBandage];};
	if (_ACE_packingBandage > 0) then {(uniformContainer _this) additemcargoGlobal ["ACE_packingBandage", _ACE_packingBandage];};
	if (_ACE_morphine > 0) then {(uniformContainer _this) additemcargoGlobal ["ACE_morphine", _ACE_morphine];};
	if (_ACE_tourniquet > 0) then {(uniformContainer _this) additemcargoGlobal ["ACE_tourniquet", _ACE_tourniquet];};
	if (_ACE_epinephrine > 0) then {(uniformContainer _this) additemcargoGlobal ["ACE_epinephrine", _ACE_epinephrine];};
	if (_ACE_EarPlugs > 0) then {(uniformContainer _this) additemcargoGlobal ["ACE_EarPlugs", _ACE_EarPlugs];};
};

_MedBackPack_processor = {
	
	
	clearItemCargoGlobal (backpackContainer _this);
	clearMagazineCargoGlobal (backpackContainer _this);
	clearWeaponCargoGlobal (backpackContainer _this);
	(backpackContainer _this) additemcargoGlobal ["ACE_quikclot",10];
	(backpackContainer _this) additemcargoGlobal ["ACE_fieldDressing",10];
	(backpackContainer _this) additemcargoGlobal ["ACE_elasticBandage",10];
	(backpackContainer _this) additemcargoGlobal ["ACE_packingBandage",10];
	(backpackContainer _this) additemcargoGlobal ["ACE_morphine",10];
	(backpackContainer _this) additemcargoGlobal ["ACE_epinephrine",10];
	(backpackContainer _this) additemcargoGlobal ["ACE_salineIV_500",5];
	(backpackContainer _this) additemcargoGlobal ["ACE_surgicalKit",1];
	(backpackContainer _this) additemcargoGlobal ["ACE_personalAidKit",5];
};