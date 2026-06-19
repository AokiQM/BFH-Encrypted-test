do
  local BFH={}
  BFH.DEBUG=false
  BFH.LOG_LEVEL=3
  local _gfrHEiV={"OFF","ERROR","WARN","INFO","DEBUG","TRACE"}
  function BFH.log(l,m,msg)
    if BFH.DEBUG and l<=BFH.LOG_LEVEL then print("[BFH]["..tostring(m).."]["..(_gfrHEiV[l+1]or"?").."] "..tostring(msg))end
  end
  function BFH.time(m,n,f)
    local s=os.clock();local ok,r=pcall(f);local c=(os.clock()-s)*1000
    if ok then BFH.log(3,m,n.." OK ("..string.format("%.1f",c).."ms)")
    else BFH.log(1,m,n.." FAIL: "..tostring(r).." ("..string.format("%.1f",c).."ms)")end
    return ok,r
  end
  local _C=_G.BFH.Core;_G.BFH=BFH;_G.BFH.Core=_C or {}
end
local __jya2 = {}
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local __kin9 = Players.LocalPlayer
local __dgm2 = {}
__dgm2.highFreqEnabled = false
__dgm2.highFreqThread = nil
__dgm2.highFreqRange = 45
__dgm2.highFreqCount = 5
__dgm2.manualEnabled = false
__dgm2.manualRange = 45
__dgm2.manualConn = nil
__dgm2.bayonetEnabled = false
__dgm2.bayonetThread = nil
__dgm2.bayonetRange = 30
__dgm2.bayonetIndex = 1
__dgm2.wallBarrelEnabled = false
__dgm2.wallBarrelThread = nil
__dgm2.wallBarrelSearchRange = 15
__dgm2.wallBarrelAttackRange = 45
__dgm2.wallBarrelAttackSpeed = 2
__dgm2.wallBarrelMultiplier = 1
__dgm2.wallBarrelDelay = 0.005
__dgm2.wallBarrelIndex = 1
__dgm2.autoFaceEnabled = false
__dgm2.autoFaceRange = 17
__dgm2.skipBarrel = false
__dgm2.autoFaceConnection = nil
__dgm2.botEnabled = false
__dgm2.botThread = nil
__dgm2.botMaxTargets = 1
local function __1m8h(__4lkp)
  return __4lkp * (28 / 45)
end
local function __52nd(__5ve9)
  if not __5ve9 then
    return nil
  end
  if   __5ve9:IsA("BasePart") then
    return __5ve9.Position
  end
  local __ikop =   __5ve9:FindFirstChildOfClass("Part") or   __5ve9:FindFirstChildOfClass("MeshPart") or   __5ve9:FindFirstChildOfClass("BasePart")
  if __ikop then
    return __ikop.Position
  end
  return nil
end
local function __ewuc()
  local __gaim = __kin9.Character
  if not __gaim then
    return nil
  end
  for __a298, __84ry in   ipairs(  __gaim:GetChildren()) do
    if     __84ry:IsA("Tool") and     __84ry:GetAttribute("Melee") then
      return __84ry
    end
  end
  return   __gaim:FindFirstChildOfClass("Tool")
end
local function __4cye(__6rn5)
  if   __6rn5:FindFirstChild("Barrel", true) then
    return "Barrel"
  end
  if   __6rn5:FindFirstChild("Sword", true) then
    return "Sword"
  end
  if   __6rn5:FindFirstChild("Axe", true) then
    return "Sapper"
  end
  if   __6rn5:FindFirstChild("Eye", true) then
    return "Fast"
  end
  if   __6rn5:FindFirstChild("FTorso", true) then
    return "Igniter"
  end
  local __cgsv =   __6rn5:GetAttribute("Type")
  if __cgsv then
    if __cgsv == "Cuirassier" or __cgsv == "Sword" then
      return "Sword"
    elseif __cgsv == "Barrel" then
      return "Barrel"
    elseif __cgsv == "Fast" then
      return "Fast"
    elseif __cgsv == "Igniter" then
      return "Igniter"
    elseif __cgsv == "Sapper" or __cgsv == "Electrocutioner" then
      return "Sapper"
    else
      return __cgsv
    end
  end
  local __2wz8 = __6rn5.Name
  if   __2wz8:find("Barrel") then
    return "Barrel"
  elseif   __2wz8:find("Fast") then
    return "Fast"
  elseif   __2wz8:find("Igniter") then
    return "Igniter"
  elseif   __2wz8:find("Sapper") then
    return "Sapper"
  elseif   __2wz8:find("Sword") or   __2wz8:find("Cuirassier") then
    return "Sword"
  end
  return "Normal"
end
local function __fuqw(__6rn5)
  local __1x9t = _G.BFH.State and _G.BFH.State.MultiDropdowns["kill.multi.zombie_types"]
  if not __1x9t or not   next(__1x9t) then
    return true
  end
  local __fyxx =   __4cye(__6rn5)
  for __bdz4, __cips in   pairs(__1x9t) do
    if __cips and __bdz4 == __fyxx then
      return true
    end
  end
  return false
end
local function __4krh(__6rn5)
  if   __6rn5:FindFirstChild("State") and __6rn5.State.Value == "Spawn" then
    return false
  end
  if not   __fuqw(__6rn5) then
    return false
  end
  return true
end
local function __9e36(__kxbt)
  local __gaim = __kin9.Character
  local __jpq6 = __gaim and   __gaim:FindFirstChild("HumanoidRootPart")
  if not __jpq6 then
    return {}
  end
  local __hwpx = {}
  local __7ny3 =   workspace:FindFirstChild("Zombies")
  if __7ny3 then
    for __a298, __6rn5 in     ipairs(    __7ny3:GetChildren()) do
      if       __6rn5:IsA("Model") and       __6rn5:FindFirstChild("HumanoidRootPart") and       __4krh(__6rn5) then
        if __dgm2.skipBarrel and         __6rn5:GetAttribute("Type") == "Barrel" then
                    continue
        end
        local __5ib0 = (__6rn5.HumanoidRootPart.Position - __jpq6.Position).Magnitude
        if __5ib0 <= __kxbt then
                              table.insert(__hwpx, {z = __6rn5, d = __5ib0, root = __6rn5.HumanoidRootPart})
        end
      end
    end
  end
  local __gg4o =   workspace:FindFirstChild("Camera")
  if __gg4o then
    for __a298, __6rn5 in     ipairs(    __gg4o:GetChildren()) do
      if       __6rn5:IsA("Model") and       __6rn5:FindFirstChild("HumanoidRootPart") and       __4krh(__6rn5) then
        local __3re = false
        for __a298, __8cku in         ipairs(__hwpx) do
          if __8cku.__6rn5 == __6rn5 then
            __3re = true
                        break
          end
        end
        if not __3re then
          local __5ib0 = (__6rn5.HumanoidRootPart.Position - __jpq6.Position).Magnitude
          if __5ib0 <= __kxbt then
                                    table.insert(__hwpx, {z = __6rn5, d = __5ib0, root = __6rn5.HumanoidRootPart})
          end
        end
      end
    end
  end
      table.sort(__hwpx, function(a, b)
    return a.__5ib0 < b.__5ib0
  end)
  return __hwpx
end
function __dgm2._botLoop()
  while __dgm2.botEnabled do
    local __1yqe =     __ewuc()
    if __1yqe then
      local __9jd1 =       __1yqe:FindFirstChild("RemoteEvent")
      if __9jd1 then
        local __3eu7 =         workspace:FindFirstChild("Bots")
        if __3eu7 then
          local __7hp2 = 0
          for __a298, __ahl6 in           ipairs(          __3eu7:GetChildren()) do
            if             __ahl6:IsA("Model") and             __ahl6:FindFirstChild("HumanoidRootPart") then
              local __ct22 =               __52nd(              __ahl6:FindFirstChild("Head"))
              if __ct22 then
                                                __9jd1:FireServer("Swing", "Side")
                                                __9jd1:FireServer("HitZombie", __ahl6, __ct22, true)
                __7hp2 = __7hp2 + 1
              end
              if __7hp2 >= __dgm2.botMaxTargets then
                                break
              end
            end
          end
        end
      end
    end
            task.wait(0.1)
  end
  __dgm2.botThread = nil
end
function __dgm2.toggleBot(__ed30)
  __dgm2.botEnabled = __ed30
  if __ed30 then
    if not __dgm2.botThread then
      __dgm2.botThread =       task.spawn(__dgm2._botLoop)
    end
  else
    if __dgm2.botThread then
                  task.cancel(__dgm2.botThread)
      __dgm2.botThread = nil
    end
  end
end
function __dgm2._isFastWeapon()
  local __1l09 = __kin9.Character
  if not __1l09 then
    return false
  end
  local __jw5f =   __1l09:FindFirstChildOfClass("Tool")
  if not __jw5f then
    return false
  end
  local __2wz8 = __jw5f.Name
  if __2wz8 == "Axe" or __2wz8 == "Baguette" or __2wz8 == "Pickaxe" or __2wz8 == "Spade" or __2wz8 == "Shovel" then
    return true
  end
  if     __2wz8:lower():find("斧") or     __2wz8:lower():find("法棍") or     __2wz8:lower():find("镐") or     __2wz8:lower():find("铲") then
    return true
  end
  return false
end
function __dgm2._highFreqLoop()
  while __dgm2.highFreqEnabled do
    local __a00 =     __ewuc()
    if __a00 then
      local __fc0y =       __1m8h(__dgm2.highFreqRange)
      local __hzc6 = {}
      local __gaim = __kin9.Character
      if __gaim then
        local __8mzn =         __gaim:FindFirstChild("HumanoidRootPart")
        if __8mzn then
          local __7ny3 =           workspace:FindFirstChild("Zombies")
          if __7ny3 then
            for __a298, __6rn5 in             ipairs(            __7ny3:GetChildren()) do
              if               __6rn5:IsA("Model") and               __6rn5:FindFirstChild("HumanoidRootPart") and               __4krh(__6rn5) then
                if __dgm2.skipBarrel and                 __6rn5:GetAttribute("Type") == "Barrel" then
                                    continue
                end
                local __8f2r = (__6rn5.HumanoidRootPart.Position - __8mzn.Position).Magnitude
                if __8f2r <= __fc0y then
                                                      table.insert(__hzc6, {z = __6rn5, root = __6rn5.HumanoidRootPart, dist = __8f2r})
                end
              end
            end
          end
          local __gg4o =           workspace:FindFirstChild("Camera")
          if __gg4o then
            for __a298, __6rn5 in             ipairs(            __gg4o:GetChildren()) do
              if               __6rn5:IsA("Model") and               __6rn5:FindFirstChild("HumanoidRootPart") and               __4krh(__6rn5) then
                if __dgm2.skipBarrel and                 __6rn5:GetAttribute("Type") == "Barrel" then
                                    continue
                end
                local __8f2r = (__6rn5.HumanoidRootPart.Position - __8mzn.Position).Magnitude
                if __8f2r <= __fc0y then
                  local __3re = false
                  for __a298, __8cku in                   ipairs(__hzc6) do
                    if __8cku.__6rn5 == __6rn5 then
                      __3re = true
                                            break
                    end
                  end
                  if not __3re then
                                                            table.insert(__hzc6, {z = __6rn5, root = __6rn5.HumanoidRootPart, dist = __8f2r})
                  end
                end
              end
            end
          end
                              table.sort(__hzc6, function(a, __ahl6)
            return a.__8f2r < __ahl6.__8f2r
          end)
          local __k21a =           math.min(__dgm2.highFreqCount, # __hzc6)
          for __1trm = 1, __k21a do
            local __k9zu =             __a00:FindFirstChild("RemoteEvent")
            if __k9zu then
              local __6rn5 = __hzc6[__1trm].__6rn5
              local __dthx = nil
              if               __6rn5:FindFirstChild("Sword", true) then
                __dthx =                 __6rn5:FindFirstChild("Right Arm", true) or                 __6rn5:FindFirstChild("Left Arm", true) or                 __6rn5:FindFirstChild("RightUpperArm", true) or                 __6rn5:FindFirstChild("LeftUpperArm", true) or                 __6rn5:FindFirstChild("RightLowerArm", true) or                 __6rn5:FindFirstChild("LeftLowerArm", true) or                 __6rn5:FindFirstChild("RightHand", true) or                 __6rn5:FindFirstChild("LeftHand", true)
              else
                __dthx =                 __6rn5:FindFirstChild("Head") or                 __6rn5:FindFirstChild("Torso") or                 __6rn5:FindFirstChild("UpperTorso") or                 __6rn5:FindFirstChild("HumanoidRootPart")
              end
              if __dthx then
                local __37er =                 __52nd(__dthx)
                if __37er then
                                                      __k9zu:FireServer("Swing", "Side")
                                                      __k9zu:FireServer("HitZombie", __6rn5, __37er, true)
                end
              end
            end
          end
        end
      end
    end
    local __5f6n = 0.05
    if not     __dgm2._isFastWeapon() then
      __5f6n = 0.15
    end
            task.wait(__5f6n)
  end
  __dgm2.highFreqThread = nil
end
function __dgm2.toggleHighFreq(__aifa)
  __dgm2.highFreqEnabled = __aifa
  if __aifa then
    if not __dgm2.highFreqThread then
      __dgm2.highFreqThread =       task.spawn(__dgm2._highFreqLoop)
    end
  else
    if __dgm2.highFreqThread then
                  task.cancel(__dgm2.highFreqThread)
      __dgm2.highFreqThread = nil
    end
  end
end
function __dgm2.setHighFreqRange(__cips)
  __dgm2.highFreqRange = __cips
end
function __dgm2.setHighFreqCount(__cips)
  __dgm2.highFreqCount = __cips
end
function __dgm2._manualAttack()
  local __1yqe =   __ewuc()
  if not __1yqe then
    return
  end
  local __fc0y =   __1m8h(__dgm2.manualRange)
  local __hwpx =   __9e36(__fc0y)
  if # __hwpx > 0 then
    local __9jd1 =     __1yqe:FindFirstChild("RemoteEvent")
    if __9jd1 then
      local __6rn5 = __hwpx[1].__6rn5
      local __aip2 = nil
      if       __6rn5:FindFirstChild("Sword", true) then
        __aip2 =         __6rn5:FindFirstChild("Right Arm", true) or         __6rn5:FindFirstChild("Left Arm", true)
      else
        __aip2 =         __6rn5:FindFirstChild("Head") or __hwpx[1].root
      end
                  __9jd1:FireServer("Swing", "Side")
                  __9jd1:FireServer("HitZombie", __6rn5, __aip2.Position, true)
    end
  end
end
function __dgm2.toggleManual(__aifa)
  __dgm2.manualEnabled = __aifa
  if __aifa then
    if __dgm2.manualConn then
      return
    end
    local __mzw = __kin9.Character and     __kin9.Character:FindFirstChildOfClass("Humanoid")
    if __mzw then
      __dgm2.manualConn =       __mzw.AnimationPlayed:Connect(function(anim)
        if __dgm2.manualEnabled and anim.Animation and anim.Animation.AnimationId and         anim.Animation.AnimationId:find("attack") then
                              task.wait(0.1)
                              __dgm2._manualAttack()
        end
      end)
    end
  else
    if __dgm2.manualConn then
                  __dgm2.manualConn:Disconnect()
      __dgm2.manualConn = nil
    end
  end
end
function __dgm2.setManualRange(__cips)
  __dgm2.manualRange = __cips
end
function __dgm2._getMusket()
  local __gaim = __kin9.Character
  if not __gaim then
    return nil
  end
  for __a298, __84ry in   ipairs(  __gaim:GetChildren()) do
    if     __84ry:IsA("Tool") and __84ry.Name == "Musket" then
      return __84ry
    end
  end
  local __8q7q =   __kin9:FindFirstChild("Backpack")
  if __8q7q then
    for __a298, __84ry in     ipairs(    __8q7q:GetChildren()) do
      if       __84ry:IsA("Tool") and __84ry.Name == "Musket" then
        return __84ry
      end
    end
  end
  return nil
end
function __dgm2._attackZombieWithBayonet(__3xqi, __a00)
  if not __a00 then
    return false
  end
  if not   __4krh(__3xqi) then
    return false
  end
  local __9jd1 =   __a00:FindFirstChild("RemoteEvent")
  if not __9jd1 then
    return false
  end
  local __dthx = nil
  if   __3xqi:FindFirstChild("Sword", true) then
    __dthx =     __3xqi:FindFirstChild("Right Arm", true) or     __3xqi:FindFirstChild("Left Arm", true)
  else
    __dthx =     __3xqi:FindFirstChild("Head")
  end
  if not __dthx then
    return false
  end
      __9jd1:FireServer("ThrustBayonet")
      __9jd1:FireServer("Bayonet_HitZombie", __3xqi, __dthx.Position, true)
  return true
end
function __dgm2._getSortedZombiesInRange()
  local __gaim = __kin9.Character
  if not __gaim then
    return {}
  end
  local __8mzn =   __gaim:FindFirstChild("HumanoidRootPart")
  if not __8mzn then
    return {}
  end
  local __hwpx = {}
  local __7ny3 =   workspace:FindFirstChild("Zombies")
  if __7ny3 then
    for __a298, __6rn5 in     ipairs(    __7ny3:GetChildren()) do
      if       __6rn5:IsA("Model") and       __6rn5:FindFirstChild("HumanoidRootPart") and       __4krh(__6rn5) then
        if __dgm2.skipBarrel and         __6rn5:GetAttribute("Type") == "Barrel" then
                    continue
        end
        if         __6rn5:FindFirstChild("State") and __6rn5.State.Value == "Spawn" then
                    continue
        end
        local __5ib0 = (__6rn5.HumanoidRootPart.Position - __8mzn.Position).Magnitude
        if __5ib0 <= __dgm2.bayonetRange then
                              table.insert(__hwpx, {zombie = __6rn5, dist = __5ib0})
        end
      end
    end
  end
      table.sort(__hwpx, function(a, __ahl6)
    return a.__8f2r < __ahl6.__8f2r
  end)
  return __hwpx
end
function __dgm2._bayonetLoop()
  __dgm2.bayonetIndex = 1
  while __dgm2.bayonetEnabled do
    local __gaim = __kin9.Character
    if __gaim then
      local __mzw =       __gaim:FindFirstChildOfClass("Humanoid")
      if __mzw and __mzw.Health > 0 then
        local __1yqe =         __dgm2._getMusket()
        if __1yqe then
          local __8snn =           __dgm2._getSortedZombiesInRange()
          local __7hp2 = # __8snn
          if __7hp2 > 0 then
            if __dgm2.bayonetIndex > __7hp2 then
              __dgm2.bayonetIndex = 1
            end
            local __hsqx = __8snn[__dgm2.bayonetIndex]
            if __hsqx then
                                          __dgm2._attackZombieWithBayonet(__hsqx.__3xqi, __1yqe)
            end
            __dgm2.bayonetIndex = __dgm2.bayonetIndex + 1
            if __dgm2.bayonetIndex > __7hp2 then
              __dgm2.bayonetIndex = 1
            end
          end
        end
      end
    end
            task.wait(0.05)
  end
  __dgm2.bayonetThread = nil
end
function __dgm2.toggleBayonet(__aifa)
  __dgm2.bayonetEnabled = __aifa
  if __aifa then
    if not __dgm2.bayonetThread then
      __dgm2.bayonetThread =       task.spawn(__dgm2._bayonetLoop)
    end
  else
    if __dgm2.bayonetThread then
                  task.cancel(__dgm2.bayonetThread)
      __dgm2.bayonetThread = nil
    end
  end
end
function __dgm2.setBayonetRange(__cips)
  __dgm2.bayonetRange = __cips
end
function __dgm2._getBarrelZombies()
  local __4pdu = {}
  local __7ny3 =   workspace:FindFirstChild("Zombies")
  if __7ny3 then
    for __a298, __6rn5 in     ipairs(    __7ny3:GetChildren()) do
      if       __6rn5:IsA("Model") and (      __6rn5:GetAttribute("Type") == "Barrel" or       __6rn5:FindFirstChild("Barrel")) then
                        table.insert(__4pdu, __6rn5)
      end
    end
  end
  return __4pdu
end
function __dgm2._isBarrelBehindWall(__3xqi)
  local __gaim = __kin9.Character
  if not __gaim then
    return true
  end
  local __663l =   __gaim:FindFirstChild("Head")
  if not __663l then
    return true
  end
  local __dthx =   __3xqi:FindFirstChild("Head") or   __3xqi:FindFirstChild("HumanoidRootPart")
  if not __dthx then
    return true
  end
  local __bsp9 = __663l.Position
  local __kthz = __dthx.Position - __bsp9
  local __8owg =   Ray.new(__bsp9, __kthz)
  local __715j = {__gaim}
  for __a298, __k9p6 in   ipairs(  Players:GetPlayers()) do
    if __k9p6 ~= __kin9 and __k9p6.Character then
                  table.insert(__715j, __k9p6.Character)
    end
  end
  local __7ny3 =   workspace:FindFirstChild("Zombies")
  if __7ny3 then
    for __a298, __6rn5 in     ipairs(    __7ny3:GetChildren()) do
      if       __6rn5:IsA("Model") then
                        table.insert(__715j, __6rn5)
      end
    end
  end
  local __jjmr =   workspace:FindFirstChild("Camera")
  if __jjmr then
    for __a298, __6rn5 in     ipairs(    __jjmr:GetChildren()) do
      if       __6rn5:IsA("Model") and __6rn5.Name == "m_Zombie" then
                        table.insert(__715j, __6rn5)
      end
    end
  end
  local __fsbo =   workspace:FindPartOnRayWithIgnoreList(__8owg, __715j)
  if __fsbo and not   __fsbo:IsDescendantOf(__3xqi) then
    return true
  end
  return false
end
function __dgm2._wallBarrelLoop()
  while __dgm2.wallBarrelEnabled do
    local __gaim = __kin9.Character
    local __mzw = __gaim and     __gaim:FindFirstChildOfClass("Humanoid")
    if __mzw and __mzw.Health > 0 then
      local __1yqe =       __ewuc()
      if __1yqe then
        local __9jd1 =         __1yqe:FindFirstChild("RemoteEvent")
        if __9jd1 then
          local __8mzn =           __gaim:FindFirstChild("HumanoidRootPart")
          if __8mzn then
            local __8ir2 = {}
            for __a298, __6rn5 in             ipairs(            __dgm2._getBarrelZombies()) do
              local __6fa7 =               __6rn5:FindFirstChild("HumanoidRootPart")
              if __6fa7 and (__6fa7.Position - __8mzn.Position).Magnitude <= __dgm2.wallBarrelSearchRange then
                if                 __dgm2._isBarrelBehindWall(__6rn5) then
                                                      table.insert(__8ir2, __6rn5)
                end
              end
            end
            local __7hp2 = # __8ir2
            if __7hp2 > 0 then
              if __dgm2.wallBarrelIndex > __7hp2 then
                __dgm2.wallBarrelIndex = 1
              end
              local __k21a =               math.min(__dgm2.wallBarrelAttackSpeed, __7hp2)
              local __8b16 = 0
              local __1trm = __dgm2.wallBarrelIndex
              while __8b16 < __k21a do
                local __52cg = __8ir2[__1trm]
                if __52cg then
                  local __663l =                   __52cg:FindFirstChild("Head")
                  if __663l then
                    for __a298 = 1, __dgm2.wallBarrelMultiplier do
                                                                  __9jd1:FireServer("Swing", "Side")
                                                                  __9jd1:FireServer("HitZombie", __52cg, __663l.Position, true)
                    end
                    __8b16 = __8b16 + 1
                  end
                end
                __1trm = __1trm + 1
                if __1trm > __7hp2 then
                  __1trm = 1
                end
              end
              __dgm2.wallBarrelIndex = __1trm
            else
              __dgm2.wallBarrelIndex = 1
            end
          end
        end
      end
    end
            task.wait(__dgm2.wallBarrelDelay)
  end
  __dgm2.wallBarrelThread = nil
end
function __dgm2.toggleWallBarrel(__aifa)
  __dgm2.wallBarrelEnabled = __aifa
  if __aifa then
    __dgm2.wallBarrelIndex = 1
    if not __dgm2.wallBarrelThread then
      __dgm2.wallBarrelThread =       task.spawn(__dgm2._wallBarrelLoop)
    end
  else
    if __dgm2.wallBarrelThread then
                  task.cancel(__dgm2.wallBarrelThread)
      __dgm2.wallBarrelThread = nil
    end
    __dgm2.wallBarrelIndex = 1
  end
end
function __dgm2._getNearestZombieInRange()
  local __gaim = __kin9.Character
  if not __gaim then
    return nil
  end
  local __j1k4 =   __gaim:FindFirstChild("HumanoidRootPart")
  if not __j1k4 then
    return nil
  end
  local __108y, __cgag = nil, math.huge
  local __7ny3 =   workspace:FindFirstChild("Zombies")
  if __7ny3 then
    for __a298, __6rn5 in     ipairs(    __7ny3:GetChildren()) do
      if       __6rn5:IsA("Model") and       __6rn5:FindFirstChild("HumanoidRootPart") and       __4krh(__6rn5) then
        local __5ib0 = (__6rn5.HumanoidRootPart.Position - __j1k4.Position).Magnitude
        if __5ib0 <= __dgm2.autoFaceRange and __5ib0 < __cgag then
          __108y = __6rn5
          __cgag = __5ib0
        end
      end
    end
  end
  return __108y
end
function __dgm2._autoFaceLoop()
  while __dgm2.autoFaceEnabled do
    local __gaim = __kin9.Character
    if not __gaim then
                  task.wait(0.1)
            continue
    end
    local __mzw =     __gaim:FindFirstChildOfClass("Humanoid")
    if not __mzw then
                  task.wait(0.1)
            continue
    end
    local __6rn5 =     __dgm2._getNearestZombieInRange()
    if __6rn5 then
      local __j1k4 =       __gaim:FindFirstChild("HumanoidRootPart")
      local __4vex =       __6rn5:FindFirstChild("HumanoidRootPart")
      if __j1k4 and __4vex then
        local __kthz = (__4vex.Position - __j1k4.Position) *         Vector3.new(1, 0, 1)
        if __kthz.Magnitude > 0.5 then
          __j1k4.CFrame =           CFrame.lookAt(__j1k4.Position, __j1k4.Position + __kthz)
        end
      end
    end
            task.wait(0.05)
  end
  __dgm2.autoFaceConnection = nil
end
function __dgm2.toggleAutoFace(__aifa)
  __dgm2.autoFaceEnabled = __aifa
  if __aifa then
    if not __dgm2.autoFaceConnection then
      __dgm2.autoFaceConnection =       task.spawn(__dgm2._autoFaceLoop)
    end
  else
    if __dgm2.autoFaceConnection then
                  task.cancel(__dgm2.autoFaceConnection)
      __dgm2.autoFaceConnection = nil
    end
  end
end
function __dgm2.setAutoFaceRange(__cips)
  __dgm2.autoFaceRange = __cips
end
__dgm2._typeLabelFx = __dgm2._typeLabelFx or {}
function __dgm2.toggleTypeLabels(__aifa)
  if __aifa then
    __dgm2._typeLabelEnabled = true
  else
    __dgm2._typeLabelEnabled = false
    for __6rn5, __8k0y in     pairs(__dgm2._typeLabelFx) do
      if __8k0y then
                        pcall(__8k0y.Destroy, __8k0y)
      end
    end
    __dgm2._typeLabelFx = {}
  end
end
local function __5cim()
      __dgm2.toggleHighFreq(false)
      __dgm2.toggleManual(false)
      __dgm2.toggleBayonet(false)
      __dgm2.toggleWallBarrel(false)
      __dgm2.toggleAutoFace(false)
      __dgm2.toggleBot(false)
end
__jya2.toggle = function(__aifa)
  if __aifa then
            __dgm2.toggleHighFreq(true)
  else
            __dgm2.toggleHighFreq(false)
  end
end
__jya2.stop = __5cim
__jya2.toggleHighFreq = __dgm2.toggleHighFreq
__jya2.setHighFreqRange = __dgm2.setHighFreqRange
__jya2.setHighFreqCount = __dgm2.setHighFreqCount
__jya2.toggleManual = __dgm2.toggleManual
__jya2.setManualRange = __dgm2.setManualRange
__jya2.toggleBayonet = __dgm2.toggleBayonet
__jya2.setBayonetRange = __dgm2.setBayonetRange
__jya2.toggleWallBarrel = __dgm2.toggleWallBarrel
__jya2.toggleAutoFace = __dgm2.toggleAutoFace
__jya2.setAutoFaceRange = __dgm2.setAutoFaceRange
__jya2.toggleBot = __dgm2.toggleBot
__jya2.toggleTypeLabels = __dgm2.toggleTypeLabels
__jya2.toggleHeadshot = function(__ed30)
  __dgm2.headshotEnabled = __ed30
end
__jya2.toggleAutoEquip = function(__ed30)
  __dgm2.autoEquipEnabled = __ed30
end
__jya2.setAutoEquipRange = function(__cips)
  __dgm2.autoEquipRange = __cips
end
local __h6ad = _G.BFH and _G.BFH.Core and _G.BFH.Core.REGISTRY
if __h6ad then
      __h6ad.register("kill.toggle.highfreq", {onStart = function()
            __dgm2.toggleHighFreq(true)
  end, onStop = function()
            __dgm2.toggleHighFreq(false)
  end})
      __h6ad.register("kill.toggle.bayonet", {onStart = function()
            __dgm2.toggleBayonet(true)
  end, onStop = function()
            __dgm2.toggleBayonet(false)
  end})
      __h6ad.register("kill.toggle.wall_barrel", {onStart = function()
            __dgm2.toggleWallBarrel(true)
  end, onStop = function()
            __dgm2.toggleWallBarrel(false)
  end})
      __h6ad.register("features.toggle.auto_face", {onStart = function()
            __dgm2.toggleAutoFace(true)
  end, onStop = function()
            __dgm2.toggleAutoFace(false)
  end})
      __h6ad.register("kill.toggle.bot", {onStart = function()
            __dgm2.toggleBot(true)
  end, onStop = function()
            __dgm2.toggleBot(false)
  end})
end
_G._BFH_STOP_ALL = _G._BFH_STOP_ALL or {}
table.insert(_G._BFH_STOP_ALL, __5cim)
for __bdz4, __cips in pairs(__jya2) do
  __dgm2[__bdz4] = __cips
end
_G.BFH.Core = _G.BFH.Core or {}
_G.BFH.Core.KILL = __dgm2
return __dgm2
