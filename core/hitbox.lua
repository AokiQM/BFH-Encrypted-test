do
  local BFH={}
  BFH.DEBUG=false
  BFH.LOG_LEVEL=3
  local _qvzEcXT={"OFF","ERROR","WARN","INFO","DEBUG","TRACE"}
  function BFH.log(l,m,msg)
    if BFH.DEBUG and l<=BFH.LOG_LEVEL then print("[BFH]["..tostring(m).."]["..(_qvzEcXT[l+1]or"?").."] "..tostring(msg))end
  end
  function BFH.time(m,n,f)
    local s=os.clock();local ok,r=pcall(f);local c=(os.clock()-s)*1000
    if ok then BFH.log(3,m,n.." OK ("..string.format("%.1f",c).."ms)")
    else BFH.log(1,m,n.." FAIL: "..tostring(r).." ("..string.format("%.1f",c).."ms)")end
    return ok,r
  end
  local _C=_G.BFH.Core;_G.BFH=BFH;_G.BFH.Core=_C or {}
end
local __gdt = {}
local RunService = game:GetService("RunService")
local __3bls = {bodyEnabled = false, bodySize = 15, headEnabled = false, headSize = 30, zombieAdded = setmetatable({}, {__mode = "k"})}
local function __9c0f(__13z9)
  return   __13z9:IsA("Model") and   __13z9.Name:find("Zombie")
end
local function __e007(__13z9)
  if __3bls.zombieAdded[__13z9] then
    return
  end
  if not __3bls.bodyEnabled and not __3bls.headEnabled then
    return
  end
  if not   __9c0f(__13z9) then
    return
  end
  if   __13z9:FindFirstChild("ZombieHitbox_Outer") or   __13z9:FindFirstChild("ZombieHitbox_Head") then
    __3bls.zombieAdded[__13z9] = true
    return
  end
  local __26il =   __13z9:FindFirstChild("HumanoidRootPart")
  local __3iah =   __13z9:FindFirstChild("Head")
  if not __26il then
    return
  end
  local __97pi = __3iah and   __3iah:IsA("BasePart") and __3iah or __26il
  local __hhya = {}
  if __3bls.bodyEnabled then
    local __iq8t =     Instance.new("Part")
    __iq8t.Name = "ZombieHitbox_Outer"
    __iq8t.Size =     Vector3.new(__3bls.bodySize, __3bls.bodySize, __3bls.bodySize)
    __iq8t.Transparency = 1
    __iq8t.CanCollide = false
    __iq8t.CanTouch = true
    __iq8t.CanQuery = true
    __iq8t.Massless = true
    __iq8t.Anchored = false
    __iq8t.CFrame = __26il.CFrame
    __iq8t.Parent = __13z9
    local __hlxd =     Instance.new("WeldConstraint")
    __hlxd.Part0 = __26il
    __hlxd.Part1 = __iq8t
    __hlxd.Parent = __iq8t
    __hhya.outer = __iq8t
  end
  if __3bls.headEnabled then
    local __iq8t =     Instance.new("Part")
    __iq8t.Name = "ZombieHitbox_Head"
    __iq8t.Size =     Vector3.new(__3bls.headSize / 2, __3bls.headSize / 2, __3bls.headSize / 2)
    __iq8t.Transparency = 1
    __iq8t.CanCollide = false
    __iq8t.CanTouch = true
    __iq8t.CanQuery = true
    __iq8t.Massless = true
    __iq8t.Anchored = false
    __iq8t.CFrame = __97pi.CFrame
    __iq8t.Parent = __13z9
    local __hlxd =     Instance.new("WeldConstraint")
    __hlxd.Part0 = __97pi
    __hlxd.Part1 = __iq8t
    __hlxd.Parent = __iq8t
    __hhya.__3iah = __iq8t
  end
  __3bls.zombieAdded[__13z9] = __hhya
end
local function __bh2t(__13z9)
  local __19sg = __3bls.zombieAdded[__13z9]
  if __19sg then
    if __19sg.outer then
                  pcall(__19sg.outer.Destroy, __19sg.outer)
    end
    if __19sg.__3iah then
                  pcall(__19sg.__3iah.Destroy, __19sg.__3iah)
    end
    __3bls.zombieAdded[__13z9] = nil
  else
    for __4qgj, __97ln in     ipairs(    __13z9:GetChildren()) do
      if __97ln.Name == "ZombieHitbox_Outer" or __97ln.Name == "ZombieHitbox_Head" then
                        pcall(__97ln.Destroy, __97ln)
      end
    end
  end
end
local function __98ew()
  for __13z9, __19sg in   pairs(__3bls.zombieAdded) do
    if not __13z9.Parent then
      if __19sg and __19sg ~= true then
        if __19sg.outer then
                              pcall(__19sg.outer.Destroy, __19sg.outer)
        end
        if __19sg.__3iah then
                              pcall(__19sg.__3iah.Destroy, __19sg.__3iah)
        end
      end
      __3bls.zombieAdded[__13z9] = nil
    end
  end
  if not __3bls.bodyEnabled and not __3bls.headEnabled then
    for __13z9, __19sg in     pairs(__3bls.zombieAdded) do
      if __19sg and __19sg ~= true then
        if __19sg.outer then
                              pcall(__19sg.outer.Destroy, __19sg.outer)
        end
        if __19sg.__3iah then
                              pcall(__19sg.__3iah.Destroy, __19sg.__3iah)
        end
      end
    end
    __3bls.zombieAdded =     setmetatable({}, {__mode = "k"})
    return
  end
  local __6t1v = {}
  local __2ni1 =   workspace:FindFirstChild("Camera")
  if __2ni1 then
    for __4qgj, __13z9 in     ipairs(    __2ni1:GetChildren()) do
      if       __9c0f(__13z9) then
        __6t1v[__13z9] = true
      end
    end
  end
  local __7idu =   workspace:FindFirstChild("Zombies")
  if __7idu then
    for __4qgj, __13z9 in     ipairs(    __7idu:GetChildren()) do
      if       __9c0f(__13z9) then
        __6t1v[__13z9] = true
      end
    end
  end
  for __13z9, __4qgj in   pairs(__3bls.zombieAdded) do
    if not __6t1v[__13z9] then
                  __bh2t(__13z9)
    end
  end
  for __13z9, __4qgj in   pairs(__6t1v) do
    if not __3bls.zombieAdded[__13z9] then
                  __e007(__13z9)
    end
  end
end
local function __7tvk()
  for __4qgj, __19sg in   pairs(__3bls.zombieAdded) do
    if __19sg and __19sg ~= true then
      if __19sg.outer and __19sg.outer.Parent then
        __19sg.outer.Size =         Vector3.new(__3bls.bodySize, __3bls.bodySize, __3bls.bodySize)
      end
      if __19sg.__3iah and __19sg.__3iah.Parent then
        __19sg.__3iah.Size =         Vector3.new(__3bls.headSize / 2, __3bls.headSize / 2, __3bls.headSize / 2)
      end
    end
  end
end
local function __h89q(__13z9)
  if not (__3bls.bodyEnabled or __3bls.headEnabled) then
    return
  end
  if not   __9c0f(__13z9) then
    return
  end
      task.wait(0.1)
      __e007(__13z9)
end
local __2ni1 = workspace:FindFirstChild("Camera")
if __2ni1 then
      __2ni1.ChildAdded:Connect(__h89q)
end
local __7idu = workspace:FindFirstChild("Zombies")
if __7idu then
      __7idu.ChildAdded:Connect(__h89q)
end
workspace.ChildAdded:Connect(function(__97ln)
  if __97ln.Name == "Camera" or __97ln.Name == "Zombies" then
            __97ln.ChildAdded:Connect(__h89q)
  end
end)
function __gdt.toggleBody(__1m4x)
  __3bls.bodyEnabled = __1m4x
      __98ew()
end
function __gdt.setBodySize(__egty)
  __3bls.bodySize =   math.clamp(__egty, 1, 15)
  if __3bls.bodyEnabled then
            __7tvk()
            __98ew()
  end
end
function __gdt.toggleHead(__1m4x)
  __3bls.headEnabled = __1m4x
      __98ew()
end
function __gdt.setHeadSize(__egty)
  __3bls.headSize =   math.clamp(__egty, 15, 30)
  if __3bls.headEnabled then
            __7tvk()
            __98ew()
  end
end
local __eudc = game:GetService("Players").LocalPlayer
__eudc.CharacterRemoving:Connect(function()
  if __3bls.bodyEnabled then
            __gdt.toggleBody(false)
  end
  if __3bls.headEnabled then
            __gdt.toggleHead(false)
  end
end)
__eudc.CharacterAdded:Connect(function()
      task.wait(0.5)
end)
local __ko3a = _G.BFH.Core and _G.BFH.Core.REGISTRY
if __ko3a then
      __ko3a.register("hitbox.body", {onStart = function()
            __gdt.toggleBody(true)
  end, onStop = function()
    __3bls.bodyEnabled = false
    for __13z9, __19sg in     pairs(__3bls.zombieAdded) do
      if __19sg and __19sg ~= true then
        if __19sg.outer then
                              pcall(__19sg.outer.Destroy, __19sg.outer)
        end
        __19sg.outer = nil
      end
    end
  end})
      __ko3a.register("hitbox.head", {onStart = function()
            __gdt.toggleHead(true)
  end, onStop = function()
    __3bls.headEnabled = false
    for __13z9, __19sg in     pairs(__3bls.zombieAdded) do
      if __19sg and __19sg ~= true then
        if __19sg.__3iah then
                              pcall(__19sg.__3iah.Destroy, __19sg.__3iah)
        end
        __19sg.__3iah = nil
      end
    end
  end})
end
_G.BFH.Core = _G.BFH.Core or {}
_G.BFH.Core.HITBOX = __gdt
return __gdt
