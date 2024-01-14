local UITest = class("UITest", UIBase)

function UITest:ctor()
    self.super.ctor(self, "prefabs", "UITest")
end

function UITest:OnStart()
    self.super.OnStart(self)
    self.btn = self.panelObj.transform:Find("Button"):GetComponent("Button")
    self.Text = self.panelObj.transform:Find("Text"):GetComponent("Text")
    self.Text.text = "Hello World"
end

function UITest:OnBind()
    self.super.OnBind(self)

    self.btn.onClick:AddListener(function()
        UIMgr:CloseUI("UITest")
    end)
end

function UITest:OnUnBind()
    self.super.OnUnBind(self)

    self.btn.onClick:RemoveAllListeners()
end

function UITest:OnDestroy()
    self.super.OnDestroy(self)

    self.btn = nil
    self.Text = nil
    GameObject.Destroy(self.panelObj)
    self.panelObj = nil
end

return UITest