-- mp_change_now.lua
-- "Troca agora" of the Multitrack Player, from anywhere in REAPER. Bind it to a
-- key, a MIDI pedal or a MIDI note/CC in the Main section of the Action List.
-- With the player open it does the same as touching AGORA in the TROCA
-- selector, wherever the keyboard focus is: the next change happens at once,
-- or a change already waiting is moved up to now. With the player closed it
-- does nothing.
local script_path = debug.getinfo(1, "S").source:match([[^@?(.*[\/])[^\/]-$]])
package.path = script_path .. "lib/?.lua;" .. package.path
local Cmd = require("MTP_PlayerCmd")

Cmd.RunOnly("atnow")
