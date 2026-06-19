do
  local BFH={}
  BFH.DEBUG=false
  BFH.LOG_LEVEL=3
  local _nknk={"OFF","ERROR","WARN","INFO","DEBUG","TRACE"}
  function BFH.log(l,m,msg)
    if BFH.DEBUG and l<=BFH.LOG_LEVEL then print("[BFH]["..tostring(m).."]["..(_nknk[l+1]or"?").."] "..tostring(msg))end
  end
  function BFH.time(m,n,f)
    local s=os.clock();local ok,r=pcall(f);local c=(os.clock()-s)*1000
    if ok then BFH.log(3,m,n.." OK ("..string.format("%.1f",c).."ms)")
    else BFH.log(1,m,n.." FAIL: "..tostring(r).." ("..string.format("%.1f",c).."ms)")end
    return ok,r
  end
  local _C=_G.BFH.Core;_G.BFH=BFH;_G.BFH.Core=_C or {}
end
local __5azd = {}
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local __jnv4 = Players.LocalPlayer
local __iqkk = {}
local function __4stj(__5q5o)
  if __5q5o.Team then
    return __5q5o.Team
  end
  local __cott =   __5q5o:GetAttribute("Team")
  if __cott then
    return __cott
  end
  local __cdow = __5q5o.Character
  if __cdow then
    local __6cka =     __cdow:FindFirstChild("TeamTag") or     __cdow:FindFirstChild("Team")
    if __6cka then
      return __6cka.Value
    end
  end
  return nil
end
local function __k3e1(__5q5o)
  if __5q5o == __jnv4 then
    return false
  end
  local __hkpc =   __4stj(__jnv4)
  local __6cka =   __4stj(__5q5o)
  if __hkpc and __6cka then
    return __hkpc ~= __6cka
  end
  return true
end
function __iqkk._getMusket()
  local __cdow = __jnv4.Character
  if not __cdow then
    return nil
  end
  for __hs69, __9si3 in   pairs(  __cdow:GetChildren()) do
    if     __9si3:IsA("Tool") and __9si3.Name == "Musket" then
      return __9si3
    end
  end
  return nil
end
function __iqkk._getMeleeWeapon()
  local __cdow = __jnv4.Character
  if __cdow then
    for __hs69, __9si3 in     pairs(    __cdow:GetChildren()) do
      if       __9si3:IsA("Tool") and       __9si3:FindFirstChild("RemoteEvent") and __9si3.Name ~= "Musket" then
        return __9si3
      end
    end
  end
  local __7s0u =   __jnv4:FindFirstChild("Backpack")
  if __7s0u then
    for __hs69, __9si3 in     pairs(    __7s0u:GetChildren()) do
      if       __9si3:IsA("Tool") and       __9si3:FindFirstChild("RemoteEvent") and __9si3.Name ~= "Musket" then
        return __9si3
      end
    end
  end
  return nil
end
function __iqkk._isValidTarget(__5q5o, __8s7q, __8egs)
  if not __5q5o or __5q5o == __jnv4 then
    return false
  end
  if not   __k3e1(__5q5o) then
    return false
  end
  local __cdow = __5q5o.Character
  if not __cdow then
    return false
  end
  local __3fn2 =   __cdow:FindFirstChildOfClass("Humanoid")
  if not __3fn2 or __3fn2.Health <= 0 then
    return false
  end
  local __4azq =   __cdow:FindFirstChild("HumanoidRootPart")
  if not __4azq then
    return false
  end
  local __j6nz =   math.abs(__4azq.Position.X - __8s7q.Position.X)
  local __e4gr =   math.abs(__4azq.Position.Z - __8s7q.Position.Z)
  return __j6nz <= __8egs and __e4gr <= __8egs
end
function __iqkk._getClosestBayonetTarget(__8s7q)
  local __3mz1, __fpb1 = nil, math.huge
  for __hs69, __5ute in   ipairs(  Players:GetPlayers()) do
    if     __iqkk._isValidTarget(__5ute, __8s7q, __iqkk.bayonetRange) and not __iqkk.attackedBayonet[__5ute] then
      local __cdow = __5ute.Character
      local __4azq = __cdow and       __cdow:FindFirstChild("HumanoidRootPart")
      if __4azq then
        local __j6nz = __4azq.Position.X - __8s7q.Position.X
        local __e4gr = __4azq.Position.Z - __8s7q.Position.Z
        local __32uw = __j6nz * __j6nz + __e4gr * __e4gr
        if __32uw < __fpb1 then
          __fpb1 = __32uw
          __3mz1 = __5ute
        end
      end
    end
  end
  return __3mz1
end
function __iqkk._getClosestMeleeTarget(__8s7q)
  local __3mz1, __fpb1 = nil, math.huge
  for __hs69, __5ute in   ipairs(  Players:GetPlayers()) do
    if     __iqkk._isValidTarget(__5ute, __8s7q, __iqkk.meleeRange) and not __iqkk.attackedMelee[__5ute] then
      local __cdow = __5ute.Character
      local __4azq = __cdow and       __cdow:FindFirstChild("HumanoidRootPart")
      if __4azq then
        local __j6nz = __4azq.Position.X - __8s7q.Position.X
        local __e4gr = __4azq.Position.Z - __8s7q.Position.Z
        local __32uw = __j6nz * __j6nz + __e4gr * __e4gr
        if __32uw < __fpb1 then
          __fpb1 = __32uw
          __3mz1 = __5ute
        end
      end
    end
  end
  return __3mz1
end
function __iqkk._attackBayonet(__5q5o)
  local __1ea1 =   __iqkk._getMusket()
  if not __1ea1 then
    return
  end
  local __vpb =   __1ea1:FindFirstChild("RemoteEvent")
  if not __vpb then
    return
  end
  local __cdow = __5q5o.Character
  if not __cdow then
    return
  end
  local __aoi7 =   __cdow:FindFirstChild("Head")
  local __3fn2 =   __cdow:FindFirstChildOfClass("Humanoid")
  if not __aoi7 or not __3fn2 then
    return
  end
      __vpb:FireServer("ThrustBayonet")
      __vpb:FireServer("Bayonet_HitPlayer", __3fn2, __aoi7.Position)
end
function __iqkk._attackMelee(__5q5o)
  local __dzh3 =   __iqkk._getMeleeWeapon()
  if not __dzh3 then
    return
  end
  local __vpb =   __dzh3:FindFirstChild("RemoteEvent")
  if not __vpb then
    return
  end
  local __cdow = __5q5o.Character
  if not __cdow then
    return
  end
  local __aoi7 =   __cdow:FindFirstChild("Head")
  local __3fn2 =   __cdow:FindFirstChildOfClass("Humanoid")
  if not __aoi7 or not __3fn2 then
    return
  end
  if __dzh3.Name == "Axe" then
    if __3fn2 and __3fn2.Health > 0 then
                  __vpb:FireServer("BraceBlock")
                  __vpb:FireServer("StopBraceBlock")
                  __vpb:FireServer("FeedbackStun", __5q5o, __aoi7.Position)
    end
  end
      __vpb:FireServer("PrepareSwing")
      __vpb:FireServer("Swing", "Side")
      __vpb:FireServer("HitPlayer", __3fn2, __aoi7.Position)
end
function __iqkk._cleanupBayonet(__8s7q)
  for __9si3, __hs69 in   pairs(__iqkk.attackedBayonet) do
    if not     __iqkk._isValidTarget(__9si3, __8s7q, __iqkk.bayonetRange) then
      __iqkk.attackedBayonet[__9si3] = nil
    end
  end
end
function __iqkk._cleanupMelee(__8s7q)
  for __9si3, __hs69 in   pairs(__iqkk.attackedMelee) do
    if not     __iqkk._isValidTarget(__9si3, __8s7q, __iqkk.meleeRange) then
      __iqkk.attackedMelee[__9si3] = nil
    end
  end
end
function __iqkk._onHeartbeat()
  local __cdow = __jnv4.Character
  if not __cdow then
    return
  end
  local __3fn2 =   __cdow:FindFirstChildOfClass("Humanoid")
  if not __3fn2 or __3fn2.Health <= 0 then
    return
  end
  local __8s7q =   __cdow:FindFirstChild("HumanoidRootPart")
  if not __8s7q then
    return
  end
  if __iqkk.bayonetActive then
            __iqkk._cleanupBayonet(__8s7q)
    local __9si3 =     __iqkk._getClosestBayonetTarget(__8s7q)
    if __9si3 then
                  __iqkk._attackBayonet(__9si3)
      __iqkk.attackedBayonet[__9si3] = true
    else
      __iqkk.attackedBayonet = {}
    end
  end
  if __iqkk.meleeActive then
            __iqkk._cleanupMelee(__8s7q)
    local __9si3 =     __iqkk._getClosestMeleeTarget(__8s7q)
    if __9si3 then
                  __iqkk._attackMelee(__9si3)
      __iqkk.attackedMelee[__9si3] = true
    else
      __iqkk.attackedMelee = {}
    end
  end
end
function __iqkk._updateHeartbeat()
  if __iqkk.bayonetActive or __iqkk.meleeActive then
    if not __iqkk.heartbeatConn then
      __iqkk.heartbeatConn =       RunService.Heartbeat:Connect(__iqkk._onHeartbeat)
    end
  else
    if __iqkk.heartbeatConn then
                  __iqkk.heartbeatConn:Disconnect()
      __iqkk.heartbeatConn = nil
    end
  end
end
__iqkk.teleport = {enabled = false, heightOffset = 4, target = nil, highlight = nil, thread = nil}
function __iqkk.toggleTeleport(__6ffy)
  if __6ffy then
    if __iqkk.teleport.thread then
      return
    end
    __iqkk.teleport.enabled = true
    __iqkk.teleport.target = nil
    if __iqkk.teleport.highlight then
                  __iqkk.teleport.highlight:Destroy()
      __iqkk.teleport.highlight = nil
    end
    __iqkk.teleport.thread =     task.spawn(function()
      while __iqkk.teleport.enabled do
        local __cdow = __jnv4.Character
        if __cdow then
          local __8s7q =           __cdow:FindFirstChild("HumanoidRootPart")
          if __8s7q then
            local __9si3 = __iqkk.teleport.target
            if __9si3 then
              local __9nde = false
              if __9si3.Character and               __9si3.Character:FindFirstChild("Head") and               __9si3.Character:FindFirstChild("HumanoidRootPart") then
                local __3fn2 =                 __9si3.Character:FindFirstChildOfClass("Humanoid")
                if __3fn2 and __3fn2.Health > 0 then
                  local __dido =                   __4stj(__jnv4)
                  local __6e6x =                   __4stj(__9si3)
                  if __dido ~= __6e6x then
                    __9nde = true
                  end
                end
              end
              if not __9nde then
                if __iqkk.teleport.highlight then
                                                      __iqkk.teleport.highlight:Destroy()
                  __iqkk.teleport.highlight = nil
                end
                __iqkk.teleport.target = nil
              end
            end
            if not __iqkk.teleport.target then
              local __k4sh = {}
              local __dido =               __4stj(__jnv4)
              for __hs69, __5ute in               ipairs(              Players:GetPlayers()) do
                if __5ute ~= __jnv4 then
                  local __6e6x =                   __4stj(__5ute)
                  if not __dido or not __6e6x or __dido ~= __6e6x then
                    if __5ute.Character and                     __5ute.Character:FindFirstChild("Head") and                     __5ute.Character:FindFirstChild("HumanoidRootPart") then
                      local __3fn2 =                       __5ute.Character:FindFirstChildOfClass("Humanoid")
                      if __3fn2 and __3fn2.Health > 0 then
                                                                        table.insert(__k4sh, __5ute)
                      end
                    end
                  end
                end
              end
              if # __k4sh > 0 then
                                                table.sort(__k4sh, function(a, b)
                  local __gjqd =                   a.Character:FindFirstChild("HumanoidRootPart")
                  local __ig4r =                   b.Character:FindFirstChild("HumanoidRootPart")
                  if not __gjqd or not __ig4r then
                    return false
                  end
                  return (__gjqd.Position - __8s7q.Position).Magnitude < (__ig4r.Position - __8s7q.Position).Magnitude
                end)
                local __3mz1 = __k4sh[1]
                __iqkk.teleport.target = __3mz1
                local __jfmp =                 Instance.new("Highlight")
                __jfmp.FillColor =                 Color3.fromRGB(0, 255, 0)
                __jfmp.OutlineColor =                 Color3.fromRGB(0, 255, 0)
                __jfmp.Adornee = __3mz1.Character
                __jfmp.Parent = __3mz1.Character
                __iqkk.teleport.highlight = __jfmp
              end
            end
            __9si3 = __iqkk.teleport.target
            if __9si3 and __9si3.Character then
              local __aoi7 =               __9si3.Character:FindFirstChild("Head")
              if __aoi7 then
                __8s7q.CFrame =                 CFrame.new(__aoi7.Position +                 Vector3.new(0, __iqkk.teleport.heightOffset, 0), __aoi7.Position)
              end
            end
          end
        end
                        task.wait()
      end
    end)
  else
    __iqkk.teleport.enabled = false
    if __iqkk.teleport.thread then
                  task.cancel(__iqkk.teleport.thread)
      __iqkk.teleport.thread = nil
    end
    if __iqkk.teleport.highlight then
                  __iqkk.teleport.highlight:Destroy()
      __iqkk.teleport.highlight = nil
    end
    __iqkk.teleport.target = nil
  end
end
__iqkk.bayonetActive = false
__iqkk.meleeActive = false
__iqkk.heartbeatConn = nil
__iqkk.attackedBayonet = {}
__iqkk.attackedMelee = {}
__iqkk.bayonetRange = 17
__iqkk.meleeRange = 45
function __iqkk.toggleBayonet(__6ffy)
  __iqkk.bayonetActive = __6ffy
  if not __6ffy then
    __iqkk.attackedBayonet = {}
  end
      __iqkk._updateHeartbeat()
end
function __iqkk.toggleMelee(__6ffy)
  __iqkk.meleeActive = __6ffy
  if not __6ffy then
    __iqkk.attackedMelee = {}
  end
      __iqkk._updateHeartbeat()
end
__jnv4.CharacterAdded:Connect(function()
  __iqkk.attackedBayonet = {}
  __iqkk.attackedMelee = {}
end)
__iqkk.enabled = false
__iqkk.aimPart = "Head"
__iqkk.showFov = false
__iqkk.fov = 90
__iqkk.teamCheck = false
__iqkk.prediction = false
__iqkk.bulletSpeed = 200
__iqkk.conn = nil
local __5q7d = Instance.new("ScreenGui")
__5q7d.Name = "AimbotFOV"
__5q7d.ResetOnSpawn = false
__5q7d.IgnoreGuiInset = true
__5q7d.Parent = __jnv4:WaitForChild("PlayerGui")
local __cows = Instance.new("Frame")
__cows.Name = "FOVCircle"
__cows.AnchorPoint = Vector2.new(0.5, 0.5)
__cows.Position = UDim2.new(0.5, 0, 0.5, 0)
__cows.Size = UDim2.new(0, __iqkk.fov * 2, 0, __iqkk.fov * 2)
__cows.BackgroundTransparency = 1
__cows.Visible = false
__cows.ZIndex = 10
__cows.Parent = __5q7d
local __5ftz = Instance.new("UIStroke")
__5ftz.Thickness = 2
__5ftz.Color = Color3.fromRGB(255, 0, 0)
__5ftz.Parent = __cows
local __s2s = Instance.new("UICorner")
__s2s.CornerRadius = UDim.new(1, 0)
__s2s.Parent = __cows
local function __7vaf()
  local __jm1u = __jnv4.Character
  if not __jm1u then
    return nil
  end
  local __hmz4 =   __jm1u:FindFirstChild("Head") or   __jm1u:FindFirstChild("HumanoidRootPart")
  if not __hmz4 then
    return nil
  end
  local __bmmg = workspace.CurrentCamera
  local __3mz1, __fpb1 = nil, math.huge
  for __hs69, __5q5o in   pairs(  Players:GetPlayers()) do
    if __5q5o == __jnv4 then
            continue
    end
    local __cdow = __5q5o.Character
    if not __cdow then
            continue
    end
    local __3fn2 =     __cdow:FindFirstChildOfClass("Humanoid")
    if not __3fn2 or __3fn2.Health <= 0 then
            continue
    end
    if __iqkk.teamCheck and __5q5o.Team == __jnv4.Team then
            continue
    end
    local __ffss =     __cdow:FindFirstChild(__iqkk.aimPart) or     __cdow:FindFirstChild("Head") or     __cdow:FindFirstChild("HumanoidRootPart")
    if not __ffss then
            continue
    end
    if (__ffss.Position - __bmmg.CFrame.Position).Magnitude > 1000 then
            continue
    end
    local __gj0v, __hj47 =     __bmmg:WorldToViewportPoint(__ffss.Position)
    if not __hj47 then
            continue
    end
    local __3klq = (    Vector2.new(__gj0v.X, __gj0v.Y) - __bmmg.ViewportSize / 2).Magnitude
    if __3klq > __iqkk.fov or __3klq >= __fpb1 then
            continue
    end
    local __jtfz =     RaycastParams.new()
    __jtfz.FilterType = Enum.RaycastFilterType.Blacklist
    __jtfz.FilterDescendantsInstances = {__jm1u, __cdow}
    if     workspace:Raycast(__hmz4.Position, __ffss.Position - __hmz4.Position, __jtfz) then
            continue
    end
    __fpb1 = __3klq
    __3mz1 = __5q5o
  end
  return __3mz1
end
local function __16df()
  if __iqkk.conn then
    return
  end
  __iqkk.conn =   RunService.RenderStepped:Connect(function()
    __cows.Size =     UDim2.new(0, __iqkk.fov * 2, 0, __iqkk.fov * 2)
    __cows.Position =     UDim2.new(0.5, 0, 0.5, 0)
    __cows.Visible = __iqkk.enabled and __iqkk.showFov
    if not __iqkk.enabled then
      return
    end
    local __9si3 =     __7vaf()
    if __9si3 and __9si3.Character then
      local __ffss =       __9si3.Character:FindFirstChild(__iqkk.aimPart) or       __9si3.Character:FindFirstChild("Head") or       __9si3.Character:FindFirstChild("HumanoidRootPart")
      if __ffss then
        local __1hld = __ffss.Position
        if __iqkk.prediction and __iqkk.bulletSpeed > 0 then
          local __4azq =           __9si3.Character:FindFirstChild("HumanoidRootPart")
          if __4azq then
            local __bmmg = workspace.CurrentCamera
            local __34ql = (__ffss.Position - __bmmg.CFrame.Position).Magnitude
            local __deb1 = __34ql / __iqkk.bulletSpeed
            __1hld = __ffss.Position + (__4azq.Velocity * __deb1)
          end
        end
        workspace.CurrentCamera.CFrame =         CFrame.new(workspace.CurrentCamera.CFrame.Position, __1hld)
      end
    end
  end)
end
local function __jzxu()
  if __iqkk.conn then
            __iqkk.conn:Disconnect()
    __iqkk.conn = nil
  end
  __cows.Visible = false
end
function __iqkk.toggle(__6ffy)
  __iqkk.enabled = __6ffy
  if __6ffy then
            __16df()
  else
            __jzxu()
  end
end
function __iqkk.setAimPart(__b63r)
  if __b63r == "body" then
    __iqkk.aimPart = "HumanoidRootPart"
  else
    __iqkk.aimPart = "Head"
  end
end
function __iqkk.toggleFOV(__6ffy)
  __iqkk.showFov = __6ffy
  __cows.Visible = __iqkk.enabled and __6ffy
end
function __iqkk.setFOV(__b63r)
  __iqkk.fov = __b63r
end
function __iqkk.toggleTeamCheck(__6ffy)
  __iqkk.teamCheck = __6ffy
end
function __iqkk.togglePrediction(__6ffy)
  __iqkk.prediction = __6ffy
end
function __iqkk.setBulletSpeed(__b63r)
  __iqkk.bulletSpeed = __b63r
end
local __b645 = false
__jnv4.CharacterRemoving:Connect(function()
  if __iqkk.enabled then
    __b645 = true
            __iqkk.toggle(false)
  end
end)
__jnv4.CharacterAdded:Connect(function()
  if __b645 then
            task.wait(0.5)
    __b645 = false
            __iqkk.toggle(true)
  end
end)
local __akbw = _G.BFH and _G.BFH.Core and _G.BFH.Core.REGISTRY
if __akbw then
      __akbw.register("pvp.toggle.teleport", {onStart = function()
            __iqkk.toggleTeleport(true)
  end, onStop = function()
            __iqkk.toggleTeleport(false)
  end})
      __akbw.register("pvp.toggle.bayonet", {onStart = function()
            __iqkk.toggleBayonet(true)
  end, onStop = function()
            __iqkk.toggleBayonet(false)
  end})
      __akbw.register("pvp.toggle.melee", {onStart = function()
            __iqkk.toggleMelee(true)
  end, onStop = function()
            __iqkk.toggleMelee(false)
  end})
      __akbw.register("pvp.toggle.aimbot", {onStart = function()
            __iqkk.toggle(true)
  end, onStop = function()
            __iqkk.toggle(false)
  end})
end
_G._BFH_STOP_ALL = _G._BFH_STOP_ALL or {}
table.insert(_G._BFH_STOP_ALL, function()
      __iqkk.toggleTeleport(false)
      __iqkk.toggleBayonet(false)
      __iqkk.toggleMelee(false)
      __iqkk.toggle(false)
end)
for __cks8, __b63r in pairs(__5azd) do
  __iqkk[__cks8] = __b63r
end
_G.BFH.Core = _G.BFH.Core or {}
_G.BFH.Core.PVP = __iqkk
return __iqkk
