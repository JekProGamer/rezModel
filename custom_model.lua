-- Reztop Custom Model
-- Version: 0.1 (UI prototype)
-- Target: RezTOP Lua
--
-- IMPORTANT:
-- This file currently provides configuration UI only.
-- It does NOT replace player or viewmodel assets yet.
-- A documented model-loading / model-assignment API is still required.
--
-- The paths below are user-entered strings. No filesystem scanning is performed.

local tab = ui.tab("Custom Model")
ui.sidebar("Custom Model", "user")

local player = tab:group("Player Model", "left")
local viewmodel = tab:group("View Model", "right")

-- Third-person player model settings
local player_folder = player:textbox(
    "Player models folder",
    "C:/CS2/Models/Players"
)

local player_file = player:textbox(
    "Player model file",
    "model.vmdl"
)

local player_index = player:slider(
    "Player model index", 1, 100, 1
)

player:button("Apply player model", function()
    local path = player_folder:get() .. "/" .. player_file:get()
    print("[Custom Model] Player model path: " .. path)
    print("[Custom Model] Player model index: " .. tostring(player_index:get()))
    print("[Custom Model] Apply is not connected: model assignment API is not implemented.")
end)

player:button("Reset player", function()
    print("[Custom Model] Player reset requested; reset API is not implemented.")
end)

-- First-person viewmodel settings
local view_folder = viewmodel:textbox(
    "Viewmodel folder",
    "C:/CS2/Models/ViewModels"
)

local view_file = viewmodel:textbox(
    "Viewmodel file",
    "hands.vmdl"
)

local view_index = viewmodel:slider(
    "Viewmodel index", 1, 100, 1
)

viewmodel:button("Apply viewmodel", function()
    local path = view_folder:get() .. "/" .. view_file:get()
    print("[Custom Model] Viewmodel path: " .. path)
    print("[Custom Model] Viewmodel index: " .. tostring(view_index:get()))
    print("[Custom Model] Apply is not connected: model assignment API is not implemented.")
end)

viewmodel:button("Reset viewmodel", function()
    print("[Custom Model] Viewmodel reset requested; reset API is not implemented.")
end)

player:label("Local configuration only")
viewmodel:label("Local configuration only")

print("[Custom Model] UI prototype loaded")
