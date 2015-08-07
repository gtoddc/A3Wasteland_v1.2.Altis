// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: setupMissionArrays.sqf
//	@file Author: AgentRev

if (!isServer) exitWith {};

MainMissions =
[
	// Mission filename, weight
	["mission_ArmedDiversquad", .5],
	["mission_Coastal_Convoy", .5],
	["mission_Convoy", .5],
	["mission_HostileHeliFormation", 1],
	["mission_APC", .7],
	["mission_MBT", .6],
	["mission_Hackers", .4],
	["mission_LightArmVeh", .5],
	["mission_ArmedHeli", .5],
	["mission_CivHeli", .5],
	["mission_AbandonedJet", 0.5],
	["mission_HostileJetFormation", .7]
];

SideMissions =
[
	["mission_HostileHelicopter", 0.8],
	["mission_MiniConvoy", .7],
	["mission_SunkenSupplies", .5],
	["mission_TownInvasion", 1],
	["mission_Roadblock", .7],
	["mission_AirWreck", .8],
	["mission_WepCache", .5],
	["mission_Outpost", .5],
	["mission_Truck", .5],
	["mission_GeoCache", .7],
	["mission_Smugglers", .6],
	["mission_HostileJet", .8]
];

MoneyMissions =
[
	["mission_MoneyShipment", .9],
	["mission_SunkenTreasure", .5],
	["mission_militaryPatrol", .2]
];

MainMissions = [MainMissions, [["A3W_heliPatrolMissions", ["mission_Coastal_Convoy", "mission_HostileHeliFormation", "mission_HostileJetFormation"]], ["A3W_underWaterMissions", ["mission_ArmedDiversquad"]]]] call removeDisabledMissions;
SideMissions = [SideMissions, [["A3W_heliPatrolMissions", ["mission_HostileHelicopter", "mission_HostileJet"]], ["A3W_underWaterMissions", ["mission_SunkenSupplies"]]]] call removeDisabledMissions;
MoneyMissions = [MoneyMissions, [["A3W_underWaterMissions", ["mission_SunkenTreasure"]]]] call removeDisabledMissions;

{ _x set [2, false] } forEach MainMissions;
{ _x set [2, false] } forEach SideMissions;
{ _x set [2, false] } forEach MoneyMissions;

MissionSpawnMarkers = [];
SunkenMissionMarkers = [];
RoadblockMissionMarkers =[];
//SniperMissionMarkers =[];
{
	switch (true) do
	{
		case (["Mission_", _x] call fn_startsWith):
		{
			MissionSpawnMarkers pushBack [_x, false];
		};
		case (["SunkenMission_", _x] call fn_startsWith):
		{
			SunkenMissionMarkers pushBack [_x, false];
		};
		case (["RoadBlock_", _x] call fn_startsWith):
		{
			RoadblockMissionMarkers pushBack [_x, false];
		};
		case (["Sniper_", _x] call fn_startsWith):
		{
			SniperMissionMarkers pushBack [_x, false];
		};
	};
} forEach allMapMarkers;

LandConvoyPaths = [];
{
	LandConvoyPaths pushBack [_x, false];
} forEach (call compile preprocessFileLineNumbers "mapConfig\convoys\landConvoysList.sqf");

CoastalConvoyPaths = [];
{
	CoastalConvoyPaths pushBack [_x, false];
} forEach (call compile preprocessFileLineNumbers "mapConfig\convoys\coastalConvoysList.sqf");
PatrolConvoyPaths = [];
{
	PatrolConvoyPaths pushBack [_x, false];
} forEach (call compile preprocessFileLineNumbers "mapConfig\convoys\patrolConvoysList.sqf");

