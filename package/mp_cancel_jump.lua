-- mp_cancel_jump.lua
-- "Cancelar ou desfazer o pulo" of the Multitrack Player, from anywhere in
-- REAPER. Bind it to a key, a MIDI pedal or a MIDI note/CC in the Main section
-- of the Action List. With the player open it does the same as the X on the
-- block or Esc: it cancels the pending jump or, once the jump happened, undoes
-- it while the undo is still available. With the player closed it does nothing.
local script_path = debug.getinfo(1, "S").source:match([[^@?(.*[\/])[^\/]-$]])
package.path = script_path .. "lib/?.lua;" .. package.path
local Cmd = require("MTP_PlayerCmd")

Cmd.RunOnly("cancel")
