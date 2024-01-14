UIMgr = class("UIMgr")
local instance = nil

function UIMgr:ctor()
    self.uiStack = {}
end

function UIMgr:OpenUI(uiName)
    local ui = self:GetUI(uiName)
    if ui then
        ui:OnStart()
        ui:OnBind()
        table.insert(self.uiStack, ui)
    end
end

function UIMgr:CloseUI(uiName)
    local ui = table.remove(self.uiStack, #self.uiStack)
    if ui then
        ui:OnUnBind()
        ui:OnDestroy()
    end
end

function UIMgr:GetUI(uiName)
    local ui = require("UI/" .. uiName)
    if ui then
        return ui()
    end
end

instance = UIMgr()

return instance
