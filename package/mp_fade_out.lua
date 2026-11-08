-- mp_fade_out.lua
-- Emergency fade out of the Multitrack Player, from anywhere in REAPER. Bind
-- it to a key, a MIDI pedal or a MIDI note/CC in the Main section of the
-- Action List. With the player open it does the same as the FADE OUT button,
-- wherever the keyboard focus is: the active VS fades to silence and stops,
-- and a second press during the fade stops at once. With the player closed it
-- does nothing.
local script_path = debug.getinfo(1, "S").source:match([[^@?(.*[\/])[^\/]-$]])
package.path = script_path .. "lib/?.lua;" .. package.path
local Cmd = require("MTP_PlayerCmd")

Cmd.RunOnly("fadeout")
