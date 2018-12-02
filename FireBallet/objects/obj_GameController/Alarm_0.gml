/// @description Send next wave
scr_prototypeSpawn(obj_Rifleman, player)
interval = lerp(interval,minInt,lerpFactor)
alarm_set(0, interval)