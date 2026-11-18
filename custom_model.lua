-- Reztop Custom Model
-- Version: 0.2 - single-folder UI
-- Target: RezTOP Lua
--
-- This version removes the separate Player/ViewModel panels.
-- The user supplies ONE root folder. Asset discovery and actual model
-- replacement are intentionally not faked: the documented RezTOP API
-- available to this script does not currently expose a confirmed folder
-- enumeration + local model assignment interface.
--
-- Once those engine interfaces are verified, the Scan/Load callbacks
-- can be connected without changing the UI.

local tab = ui.tab("Custom Model")
ui.sidebar("Custom Model", "user")

local model = tab:group("Custom Model", "left")

local model_folder = model:textbox(
    "Model folder",
    "C:/CS2/Models/Custom"
)

model:button("Scan folder", function()
    local path = model_folder:get()

    if not path or path == "" then
        print("[Custom Model] Please enter a model folder.")
        return
    end

    print("[Custom Model] Folder selected: " .. path)
    print("[Custom Model] Automatic file discovery is not connected yet.")
    print("[Custom Model] A verified filesystem enumeration API is required.")
end)

model:button("Load model", function()
    local path = model_folder:get()

    if not path or path == "" then
        print("[Custom Model] Please enter a model folder.")
        return
    end

    print("[Custom Model] Requested model folder: " .. path)
    print("[Custom Model] Model loading is not connected.")
    print("[Custom Model] A verified local model-assignment API is required.")
end)

model:button("Reset", function()
    print("[Custom Model] Reset requested.")
    print("[Custom Model] Reset is not connected: no verified model-assignment API.")
end)

model:label("One folder for all model assets")
model:label("Local configuration only")

print("[Custom Model] Single-folder UI loaded")
