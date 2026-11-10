-- mp_timbre_1.lua
-- Makes timbre 1 the active timbre of the Multitrack Player instrument project, from anywhere in REAPER.
-- Bind it to a key or a MIDI note/CC of the controller in the Main section of
-- the Action List. It works with the player open or closed, as long as the
-- instrument project is open in a tab; the release of a MIDI button is ignored.
local script_path = debug.getinfo(1, "S").source:match([[^@?(.*[\/])[^\/]-$]])
package.path = script_path .. "lib/?.lua;" .. package.path
require("MTP_TimbreCmd").Run("1")
