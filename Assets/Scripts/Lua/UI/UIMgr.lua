UIMgr = class("UIMgr")
local instance = nil

function UIMgr:ctor()
    self.uiList = {}
end

instance = UIMgr.new()

return instance
