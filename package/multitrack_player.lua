-- multitrack_player.lua
-- Multitrack Player: entry point of the window action. The player itself lives
-- in lib/MTP_App.lua (compiled to bytecode in the install package); this file
-- stays as text so the REAPER action always loads it.

-- Running it again while open reloads: ends the current instance (1) and
-- relaunches (2), without a dialog. Needs REAPER 7.03+; ignored on older ones.
if reaper.set_action_options then reaper.set_action_options(1 | 2) end

local script_path = debug.getinfo(1, "S").source:match([[^@?(.*[\/])[^\/]-$]])
local run = assert(loadfile(script_path .. "lib/MTP_App.lua"))
run(script_path)
