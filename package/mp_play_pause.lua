-- mp_play_pause.lua
-- Play/stop of the Multitrack Player, from anywhere in REAPER.
-- Bind it to Space in the Main section of the Action List, in place of
-- "Transport: Play/stop". With the player open it does the same as the
-- player's PLAY / STOP button, wherever the keyboard focus is; with the
-- player closed it is REAPER's native Transport: Play/stop.
local script_path = debug.getinfo(1, "S").source:match([[^@?(.*[\/])[^\/]-$]])
package.path = script_path .. "lib/?.lua;" .. package.path
local Cmd = require("MTP_PlayerCmd")

Cmd.Run("play")
