UITest = class("UITest", UIBase)

function UITest:ctor()
    self.super.ctor(self, "prefabs", "UITest")
    self.Button = self.panelObj.transform:Find("Button"):GetComponent("Button")
    self.Text = self.panelObj.transform:Find("Text"):GetComponent("Text")
    self.Button.onClick:AddListener(function()
        self.Text.text = "Hello World"
    end)
end

