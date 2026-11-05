-- mp_go_to_next_region.lua
local script_path = debug.getinfo(1, "S").source:match([[^@?(.*[\/])[^\/]-$]])
package.path = script_path .. "lib/?.lua;" .. package.path
local Core = require("RegionNavCore")

Core.QueueNext()
