""

copied v1.2 files in

added ["R3F_LOG_disabled", false, true] to spawnstore objects, object creation and missions
test OK
ADDED ROADBLOCK SPWNA AND RESERVED MEMBERS DESC TO MISSION.SQM
ADDED AIRDROP, VACTIONS, CHOPSHOP.SQF AND MARK OWNED SQF; PLAYER ACTIONS FOR EACH...dont forget to add "APOC_srv_" to server/antihack/filterExecAttempt.sqf


TEST
works

deleted duplicate script for all vehicles in spawnstoreobjects.sqf 

set R3F_LOG_disabled" in oload and vload....errors on rpt...rolled back pbo

added breaklock and line in playeractions.sqf

need to add line to vload and oload for vehicles to save lock state.. done

test
wont save lock state

beacon detector added