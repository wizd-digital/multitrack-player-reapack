-- mp_click_stop.lua
-- Free click: stop at the end of the beat.
-- Bind it to a key or a MIDI note/CC in the REAPER Action List. It only works
-- while the Multitrack Player window script is running.
local script_path = debug.getinfo(1, "S").source:match([[^@?(.*[\/])[^\/]-$]])
package.path = script_path .. "lib/?.lua;" .. package.path
local Cmd = require("MTP_FreeClickCmd")

Cmd.Run("stop")
