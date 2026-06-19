do
  local BFH={}
  BFH.DEBUG=false
  BFH.LOG_LEVEL=3
  local _igXxbJQ={"OFF","ERROR","WARN","INFO","DEBUG","TRACE"}
  function BFH.log(l,m,msg)
    if BFH.DEBUG and l<=BFH.LOG_LEVEL then print("[BFH]["..tostring(m).."]["..(_igXxbJQ[l+1]or"?").."] "..tostring(msg))end
  end
  function BFH.time(m,n,f)
    local s=os.clock();local ok,r=pcall(f);local c=(os.clock()-s)*1000
    if ok then BFH.log(3,m,n.." OK ("..string.format("%.1f",c).."ms)")
    else BFH.log(1,m,n.." FAIL: "..tostring(r).." ("..string.format("%.1f",c).."ms)")end
    return ok,r
  end
  local _C=_G.BFH.Core;_G.BFH=BFH;_G.BFH.Core=_C or {}
end
local __iyi3 = {}
local Players = game:GetService("Players")
local __i0zk = Players.LocalPlayer
local __2tx2 = {enabled = false, gui = nil, listeners = {}}
local __8exf = {Officer = "军官", Sapper = "工兵", Surgeon = "医生", Chaplain = "牧师", LineInfantry = "步兵", Seaman = "水手", Musician = "乐手", Piper = "乐手", Lancer = "枪骑兵"}
local function __cwgz(__5mtr)
  local __i4hf =   __5mtr:GetAttribute("CurrentClass")
  if not __i4hf then
    __i4hf =     __5mtr:GetAttribute("Class")
  end
  if __i4hf and __8exf[__i4hf] then
    return __8exf[__i4hf]
  end
  return nil
end
local __e9wj = {stats = "", zombie = "", class = "", me = ""}
local function __3czm(__28qp, __b5jd, __3e30)
  if __b5jd ~= __e9wj[__3e30] then
    __28qp.Text = __b5jd
    __e9wj[__3e30] = __b5jd
  end
end
local __a9wr = false
local function __d9w6()
  if __a9wr then
    return
  end
  __a9wr = true
      task.spawn(function()
            task.wait()
    __a9wr = false
    if __2tx2.enabled then
                  __2tx2:_update()
    end
  end)
end
function __2tx2:_build()
  if self.gui then
            pcall(self.gui.Destroy, self.gui)
  end
  local __g4hl =   Instance.__b5jd("ScreenGui")
  __g4hl.Name = "BFH_HUD"
  __g4hl.ResetOnSpawn = false
  __g4hl.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
  __g4hl.Parent =   __i0zk:WaitForChild("PlayerGui")
  local __8fc5 =   Instance.__b5jd("Frame")
  __8fc5.Size =   UDim2.__b5jd(0, 300, 0, 70)
  __8fc5.Position =   UDim2.__b5jd(0, 5, 0, 5)
  __8fc5.BackgroundTransparency = 1
  __8fc5.BorderSizePixel = 0
  __8fc5.Parent = __g4hl
  local __72xq = {}
  local function __5i6q(__game, __duoj, __2715)
    local __fi4l =     Instance.__b5jd("TextLabel")
    __fi4l.Size =     UDim2.__b5jd(1, 0, 0, 14)
    __fi4l.Position =     UDim2.__b5jd(0, 0, 0, __game)
    __fi4l.BackgroundTransparency = 1
    __fi4l.RichText = true
    __fi4l.TextColor3 = __duoj or     Color3.fromRGB(230, 230, 230)
    __fi4l.TextSize = __2715 or 10
    __fi4l.Font = Enum.Font.GothamSemibold
    __fi4l.TextXAlignment = Enum.TextXAlignment.Left
    __fi4l.TextStrokeTransparency = 0.3
    __fi4l.TextStrokeColor3 =     Color3.fromRGB(0, 0, 0)
    __fi4l.Parent = __8fc5
    return __fi4l
  end
  __72xq.stats =   __5i6q(0,   Color3.fromRGB(255, 220, 120), 10)
  __72xq.zombieDetail =   __5i6q(16,   Color3.fromRGB(180, 200, 255), 9)
  __72xq.classDetail =   __5i6q(32,   Color3.fromRGB(200, 255, 200), 9)
  __72xq.me =   __5i6q(48,   Color3.fromRGB(255, 200, 255), 9)
  self.gui = __g4hl
  self.labels = __72xq
end
function __2tx2:_update()
  if not self.enabled or not self.labels then
    return
  end
  local __72xq = self.labels
  local __htb9 =   Players:GetPlayers()
  local __bfq, __bgeg = 0, 0
  for __fg2x, __5mtr in   ipairs(__htb9) do
    local __f4ih = __5mtr.Character
    if __f4ih then
      local __d61e =       __f4ih:FindFirstChildOfClass("Humanoid")
      if __d61e and __d61e.Health > 0 then
        __bfq = __bfq + 1
      else
        __bgeg = __bgeg + 1
      end
    else
      __bgeg = __bgeg + 1
    end
  end
  local __aoqg = _G.BFH and _G.BFH.Core and _G.BFH.Core.ESP
  local __7wjl = __aoqg and __aoqg.trackedZombies or {}
  local __46ri = 0
  local __586 = {}
  for __31hv, __fg2x in   pairs(__7wjl) do
    if __31hv and __31hv.Parent then
      __46ri = __46ri + 1
      local __7d06 = __aoqg._getZombieTypeKey and       __aoqg._getZombieTypeKey(__31hv)
      if __7d06 then
        __586[__7d06] = (__586[__7d06] or 0) + 1
      end
    end
  end
      __3czm(__72xq.stats,   string.format("僵尸总数: %d  玩家: %d | 存活: %d | 死亡: %d", __46ri, # __htb9, __bfq, __bgeg), "stats")
  local __71cq = {"Normal", "Eye", "Sword", "Barrel", "FTorso", "Axe"}
  local __8fit = {Normal = "山伯乐", Eye = "红眼", Sword = "胸甲骑兵", Barrel = "自爆", FTorso = "提灯人", Axe = "斧头"}
  local __4u72 = {}
  for __fg2x, __gin9 in   ipairs(__71cq) do
            table.insert(__4u72, (__8fit[__gin9] or __gin9) .. " " .. (__586[__gin9] or 0))
  end
      __3czm(__72xq.zombieDetail,   table.concat(__4u72, " | "), "zombie")
  local __kmf4 = {"军官", "工兵", "医生", "牧师", "步兵", "水手", "乐手", "枪骑兵"}
  local __8so5 = {}
  for __fg2x, __5mtr in   ipairs(__htb9) do
    local __i4hf =     __cwgz(__5mtr)
    if __i4hf then
      __8so5[__i4hf] = (__8so5[__i4hf] or 0) + 1
    end
  end
  local __eh79 = {}
  for __fg2x, __i4hf in   ipairs(__kmf4) do
            table.insert(__eh79, __i4hf .. " " .. (__8so5[__i4hf] or 0))
  end
      __3czm(__72xq.classDetail,   table.concat(__eh79, " | "), "class")
      self:_updateMe()
end
function __2tx2:_updateMe()
  if not self.enabled or not self.labels then
    return
  end
  local __g822 = "?"
  local __av9v = "?"
  local __417s = __i0zk.Character
  if __417s then
    local __d61e =     __417s:FindFirstChildOfClass("Humanoid")
    if __d61e then
      __g822 =       tostring(      math.floor(__d61e.Health / __d61e.MaxHealth * 100))
    end
    local __dcai =     __417s:FindFirstChild("UserStates")
    if __dcai then
      local __5mdb =       __dcai:FindFirstChild("Infected")
      if __5mdb and       __5mdb:IsA("NumberValue") then
        __av9v =         tostring(        math.floor(__5mdb.Value + 0.5))
      end
    end
  end
      __3czm(self.labels.me,   string.format("血量:%s 感染:%s", __g822, __av9v), "me")
end
function __2tx2:_setupEvents()
  for __fg2x, __f4ih in   ipairs(self.listeners) do
            pcall(__f4ih.Disconnect, __f4ih)
  end
  self.listeners = {}
  local function __89f7()
            __d9w6()
  end
      table.insert(self.listeners,   Players.PlayerAdded:Connect(__89f7))
      table.insert(self.listeners,   Players.PlayerRemoving:Connect(__89f7))
  local function __jjcv(__5mtr)
    if __5mtr == __i0zk then
      return
    end
            table.insert(self.listeners,     __5mtr.CharacterAdded:Connect(__89f7))
            table.insert(self.listeners,     __5mtr.CharacterRemoving:Connect(__89f7))
  end
  for __fg2x, __5mtr in   ipairs(  Players:GetPlayers()) do
            __jjcv(__5mtr)
  end
      table.insert(self.listeners,   Players.PlayerAdded:Connect(__jjcv))
  local function __ahmn()
    local __417s = __i0zk.Character
    if not __417s then
      return
    end
    local __d61e =     __417s:FindFirstChildOfClass("Humanoid")
    if __d61e then
                  table.insert(self.listeners,       __d61e.HealthChanged:Connect(function()
        if __2tx2.enabled then
                              __2tx2:_updateMe()
        end
      end))
    end
    local __dcai =     __417s:FindFirstChild("UserStates")
    if __dcai then
      local __4bqp =       __dcai:FindFirstChild("Infected")
      if __4bqp and       __4bqp:IsA("NumberValue") then
                        table.insert(self.listeners,         __4bqp.Changed:Connect(function()
          if __2tx2.enabled then
                                    __2tx2:_updateMe()
          end
        end))
      end
    end
  end
      __ahmn()
      table.insert(self.listeners,   __i0zk.CharacterAdded:Connect(function()
            __ahmn()
            __89f7()
  end))
  local __aoqg = _G.BFH and _G.BFH.Core and _G.BFH.Core.ESP
  if __aoqg then
    __aoqg._onTrackedChange = function()
                  __d9w6()
    end
  end
end
function __2tx2:_start()
  for __gin9 in   pairs(__e9wj) do
    __e9wj[__gin9] = ""
  end
      self:_update()
      self:_setupEvents()
end
function __iyi3.toggle(__3bis)
  __2tx2.enabled = __3bis
  if __3bis then
            __2tx2:_build()
            __2tx2:_start()
  else
    for __fg2x, __f4ih in     ipairs(__2tx2.listeners) do
                  pcall(__f4ih.Disconnect, __f4ih)
    end
    __2tx2.listeners = {}
    local __aoqg = _G.BFH and _G.BFH.Core and _G.BFH.Core.ESP
    if __aoqg then
      __aoqg._onTrackedChange = nil
    end
    if __2tx2.gui then
                  pcall(__2tx2.gui.Destroy, __2tx2.gui)
      __2tx2.gui = nil
    end
  end
end
local __g2sj = _G.BFH and _G.BFH.Core and _G.BFH.Core.REGISTRY
if __g2sj then
      __g2sj.register("hud.display", {onStart = function()
            __iyi3.toggle(true)
  end, onStop = function()
            __iyi3.toggle(false)
  end})
end
_G.BFH.Core = _G.BFH.Core or {}
_G.BFH.Core.HUD = __iyi3
return __iyi3
