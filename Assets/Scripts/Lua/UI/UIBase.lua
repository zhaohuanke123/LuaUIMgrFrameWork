UIBase = class("UIBase")

function UIBase:ctor(abName, uiName)
    self.abName = abName
    self.uiName = uiName
    self.panelObj = ABMgr:LoadRes(abName, uiName)
end 
