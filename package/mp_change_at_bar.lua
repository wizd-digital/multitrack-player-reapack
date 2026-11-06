-- mp_change_at_bar.lua
-- "Troca no fim do compasso" of the Multitrack Player, from anywhere in REAPER.
-- Bind it to a key, a MIDI pedal or a MIDI note/CC in the Main section of the
-- Action List. With the player open it does the same as touching COMPASSO in
-- the TROCA selector, wherever the keyboard focus is: it chooses the end of the
-- bar for the next change or moves up a change already waiting. With the
-- player closed it does nothing.
local script_path = debug.getinfo(1, "S").source:match([[^@?(.*[\/])[^\/]-$]])
package.path = script_path .. "lib/?.lua;" .. package.path
local Cmd = require("MTP_PlayerCmd")

Cmd.RunOnly("atbar")
