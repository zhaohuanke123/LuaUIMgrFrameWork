

UIMgr = class("UIMgr")
local instance = nil

function UIMgr:ctor()
    self.uiList = {}
end

function UIMgr:OpenUI(uiName)
    local ui = self.uiList[uiName]
    if ui == nil then
        ui = require("UI/" .. uiName).new()
        self.uiList[uiName] = ui
    end
    ui:Open()
end

function UIMgr:CloseUI(uiName)
    local ui = self.uiList[uiName]
    if ui ~= nil then
        ui:Close()
    end
end

function UIMgr:CloseAllUI()
    for k, v in pairs(self.uiList) do
        v:Close()
    end
end

instance = UIMgr.new()

return instance