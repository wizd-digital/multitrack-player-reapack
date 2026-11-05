-- GoToRegionNumber.lua
-- Pede o número da region (1, 2, 3...) e pula pra ela, mantendo/iniciando playback.
-- Generaliza o goToRegionAndPlay original: não precisa editar o script pra
-- mudar de region, e o número corresponde à ordem real das regions (ignora
-- markers soltos no meio do caminho).

local script_path = debug.getinfo(1, "S").source:match([[^@?(.*[\/])[^\/]-$]])
package.path = script_path .. "lib/?.lua;" .. package.path
local Core = require("RegionNavCore")

local function Main()
    local regions = Core.GetRegions()

    if #regions == 0 then
        reaper.ShowMessageBox("Nenhuma region encontrada no projeto.", "Aviso", 0)
        return
    end

    local retval, input = reaper.GetUserInputs(
        "Ir para region",
        1,
        "Número da region (1-" .. #regions .. "):",
        "1"
    )

    if not retval then return end

    local regionNumber = tonumber(input)

    if not regionNumber or regionNumber < 1 or regionNumber > #regions then
        reaper.ShowMessageBox("Número de region inválido: " .. tostring(input), "Erro", 0)
        return
    end

    Core.JumpToPosition(regions[regionNumber].pos)
end

Main()
