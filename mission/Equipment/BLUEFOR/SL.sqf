// Solid Games
// чтобы добавить снарягу с этого файла в игрока нужно прописать в инициализацию бота (без внешних кавычек): "[this,"BLUEFOR","SL"] call SerP_unitprocessor;"

//технический рюкзаак(не трогать)
_unit addBackpack "B_Carryall_Base";

// Вооружение и атачменты к нему

_unit addItem "rhsusf_mag_15Rnd_9x19_JHP";
_unit addWeapon "rhsusf_weap_m9";

_unit addItem "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_unit addWeapon "tu_m16a2";

_unit addWeapon "Binocular";

//удаление технического рюкзака(не трогать)
removeBackpack _unit;


// Униформа
_unit forceAddUniform "TRYK_U_B_3CD_Ranger_BDU";

// Разгрузка и предметы в ней
_unit addVest "usm_vest_rba_lbe_rmp";
for '_i' from 1 to 4 do { _unit addItemToVest 'rhsusf_mag_15Rnd_9x19_JHP';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red';};
for '_i' from 1 to 6 do { _unit addItemToVest 'rhs_mag_30Rnd_556x45_M855A1_Stanag';};
for '_i' from 1 to 4 do { _unit addItemToVest 'rhs_mag_m67';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_an_m8hc';};

// Рюкзак и предметы в нем
_unit addBackpack "tf_rt1523g_sage";
for '_i' from 1 to 4 do { _unit addItemToBackpack  'rhs_mag_30Rnd_556x45_M855A1_Stanag';};
for '_i' from 1 to 2 do { _unit addItemToBackpack  'rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red';};
for '_i' from 1 to 2 do { _unit addItemToBackpack  'rhs_mag_an_m8hc';};

// Шлем
_unit addHeadgear "rhsgref_helmet_pasgt_3color_desert_rhino";

// Дополнительные предметы
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";