UIBase = class("UIBase")

function UIBase:ctor(abName, uiName)
    self.abName = abName
    self.uiName = uiName
end

function UIBase:OnStart()
    self.panelObj = ABMgr:LoadRes(self.abName, self.uiName)
end

function UIBase:OnBind()

end

function UIBase:OnUnBind()

end

function UIBase:OnDestroy()

end
