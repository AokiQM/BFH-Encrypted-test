do
  local BFH={}
  BFH.DEBUG=false
  BFH.LOG_LEVEL=3
  local _agTwUpS={"OFF","ERROR","WARN","INFO","DEBUG","TRACE"}
  function BFH.log(l,m,msg)
    if BFH.DEBUG and l<=BFH.LOG_LEVEL then print("[BFH]["..tostring(m).."]["..(_agTwUpS[l+1]or"?").."] "..tostring(msg))end
  end
  function BFH.time(m,n,f)
    local s=os.clock();local ok,r=pcall(f);local c=(os.clock()-s)*1000
    if ok then BFH.log(3,m,n.." OK ("..string.format("%.1f",c).."ms)")
    else BFH.log(1,m,n.." FAIL: "..tostring(r).." ("..string.format("%.1f",c).."ms)")end
    return ok,r
  end
  local _C=_G.BFH.Core;_G.BFH=BFH;_G.BFH.Core=_C or {}
end
local __bxo7 = {}
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local __8vqk = game:GetService("UserInputService")
local __dibd = Players.LocalPlayer
local function __hmbk()
  return __dibd.Character ~= nil
end
do
  local __5cad = false
  local __b25y = nil
  local __jrfb = 16
  function __bxo7.toggleCoordSpeed(__1n32)
    if __1n32 and not     __hmbk() then
      __5cad = true
      return
    end
    __5cad = __1n32
    if __1n32 then
      if not __b25y then
        __b25y =         RunService.Heartbeat:Connect(function(dt)
          if not __5cad or not           __hmbk() then
            return
          end
          local __3eyn = __dibd.Character
          if not __3eyn then
            return
          end
          local __5n5u =           __3eyn:FindFirstChild("HumanoidRootPart")
          local __azsu =           __3eyn:FindFirstChildOfClass("Humanoid")
          if not __5n5u or not __azsu then
            return
          end
          local __chpt = __azsu.MoveDirection
          if __chpt.Magnitude > 0 then
            __5n5u.CFrame = __5n5u.CFrame + __chpt.Unit * __jrfb * dt
          end
        end)
      end
    else
      if __b25y then
                        __b25y:Disconnect()
        __b25y = nil
      end
    end
  end
  function __bxo7.setCoordSpeed(__3auz)
    __jrfb =     math.clamp(__3auz, 1, 35)
  end
      __dibd.CharacterRemoving:Connect(function()
    if __5cad then
                  __bxo7.toggleCoordSpeed(false)
    end
  end)
      __dibd.CharacterAdded:Connect(function()
            task.wait(0.5)
    if __5cad then
                  __bxo7.toggleCoordSpeed(true)
    end
  end)
end
do
  local __5cad = false
  local __emb8 = 25
  local __8mpk = {}
  local function __em6j(__azsu)
    if __azsu and __5cad and     __hmbk() then
                  pcall(function()
        __azsu.WalkSpeed = __emb8
      end)
    end
  end
  local function __1i5c(__9091)
    local __azsu =     __9091:FindFirstChildOfClass("Humanoid")
    if __azsu then
                  __em6j(__azsu)
      if not __8mpk[__azsu] then
        __8mpk[__azsu] =                 __azsu:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
                              __em6j(__azsu)
        end)
      end
    end
  end
  function __bxo7.toggleSpeed(__1n32)
    if __1n32 and not     __hmbk() then
      __5cad = true
      return
    end
    __5cad = __1n32
    if __1n32 then
      local __3eyn = __dibd.Character
      if __3eyn then
                        __1i5c(__3eyn)
      end
    else
      for __8zik, __3eyn in       pairs(__8mpk) do
                        pcall(function()
                              __3eyn:Disconnect()
        end)
      end
      __8mpk = {}
      local __3eyn = __dibd.Character
      if __3eyn then
        local __azsu =         __3eyn:FindFirstChildOfClass("Humanoid")
        if __azsu then
                              pcall(function()
            __azsu.WalkSpeed = 16
          end)
        end
      end
    end
  end
  function __bxo7.setPlayerSpeed(__3auz)
    __emb8 =     math.clamp(__3auz, 1, 45)
    if __5cad and     __hmbk() then
      local __3eyn = __dibd.Character
      if __3eyn then
        local __azsu =         __3eyn:FindFirstChildOfClass("Humanoid")
        if __azsu then
                              __em6j(__azsu)
        end
      end
    end
  end
      __dibd.CharacterRemoving:Connect(function()
    if __5cad then
                  __bxo7.toggleSpeed(false)
    end
  end)
      __dibd.CharacterAdded:Connect(function()
            task.wait(0.5)
    if __5cad then
                  __1i5c(__dibd.Character)
    end
  end)
end
do
  local __eed4 = false
  local __i00 = 45
  local __j9k8 = nil
  local __aho6 = nil
  local __7fds = nil
  local __1ycv = nil
  local function __5ld4()
    if __1ycv then
                  task.cancel(__1ycv)
      __1ycv = nil
    end
    if __7fds then
                  pcall(function()
        if not __7fds.Parent then
          __7fds.Parent = __dibd.Character
        end
      end)
      __7fds = nil
    end
    if __j9k8 then
                  __j9k8:Destroy()
      __j9k8 = nil
    end
    if __aho6 then
                  __aho6:Destroy()
      __aho6 = nil
    end
    local __3eyn = __dibd.Character
    if __3eyn then
      local __azsu =       __3eyn:FindFirstChildOfClass("Humanoid")
      if __azsu then
                        pcall(function()
                              __azsu:ChangeState(Enum.HumanoidStateType.Running)
        end)
      end
      local __5n5u =       __3eyn:FindFirstChild("HumanoidRootPart")
      if __5n5u then
        __5n5u.Velocity =         Vector3.new(__5n5u.Velocity.X, 0, __5n5u.Velocity.Z)
      end
    end
  end
  local function __3nvs()
            __5ld4()
    local __9091 = __dibd.Character
    if not __9091 then
      return
    end
    local __f0cd =     __9091:FindFirstChild("HumanoidRootPart")
    local __g2h4 =     __9091:FindFirstChildOfClass("Humanoid")
    if not __f0cd or not __g2h4 then
      return
    end
    local __3aas =     __9091:FindFirstChild("Animate")
    if __3aas then
      __7fds = __3aas
      __3aas.Parent = nil
    end
    __j9k8 =     Instance.new("BodyVelocity", __f0cd)
    __j9k8.MaxForce =     Vector3.new(1e6, 1e6, 1e6)
    __aho6 =     Instance.new("BodyGyro", __f0cd)
    __aho6.MaxTorque =     Vector3.new(1e6, 1e6, 1e6)
    __aho6.P = 8000
    local __ilge
            pcall(function()
      __ilge =             require(      __dibd.PlayerScripts:WaitForChild("PlayerModule")):GetControls()
    end)
    __1ycv =     task.spawn(function()
      while __eed4 and __9091.Parent do
        local __kitz = workspace.CurrentCamera.CFrame
        local __hgwp = __ilge and         __ilge:GetMoveVector() or         Vector3.new()
        local __k51s = (__kitz.LookVector * -__hgwp.Z) + (__kitz.RightVector * __hgwp.X)
        if __hgwp.Magnitude > 0 then
          __j9k8.Velocity = __k51s.Unit * __i00
          __aho6.CFrame =           CFrame.new(Vector3.zero, __k51s)
        else
          __j9k8.Velocity =           Vector3.new(0, -0.5, 0)
          __aho6.CFrame =           CFrame.new(Vector3.zero,           Vector3.new(__kitz.LookVector.X, 0, __kitz.LookVector.Z))
        end
                        __g2h4:ChangeState(Enum.HumanoidStateType.Climbing)
                        RunService.RenderStepped:Wait()
      end
                  __5ld4()
    end)
  end
  function __bxo7.toggleFly(__1n32)
    if __1n32 and not     __hmbk() then
      __eed4 = true
      return
    end
    __eed4 = __1n32
    if __1n32 then
                  __3nvs()
    end
  end
  function __bxo7.setFlySpeed(__3auz)
    __i00 =     math.clamp(__3auz, 10, 60)
  end
      __dibd.CharacterRemoving:Connect(function()
    if __eed4 then
                  __5ld4()
    end
  end)
      __dibd.CharacterAdded:Connect(function()
            task.wait(1)
    if __eed4 then
                  __3nvs()
    end
  end)
end
do
  local __3kdo = false
  local __3sdy = 60
  local __4txn = nil
  local __9wsr = nil
  function __bxo7.toggleManualJump(__1n32)
    if __1n32 and not     __hmbk() then
      __3kdo = true
      return
    end
    __3kdo = __1n32
    if __1n32 then
      if not __4txn then
        __4txn =         __8vqk.JumpRequest:Connect(function()
          if not __3kdo or not           __hmbk() then
            return
          end
          local __3eyn = __dibd.Character
          if not __3eyn then
            return
          end
          local __5n5u =           __3eyn:FindFirstChild("HumanoidRootPart")
          local __azsu =           __3eyn:FindFirstChildOfClass("Humanoid")
          if __5n5u and __azsu then
                                    __azsu:ChangeState(Enum.HumanoidStateType.Jumping)
            __5n5u.Velocity =             Vector3.new(__5n5u.Velocity.X, __3sdy, __5n5u.Velocity.Z)
          end
        end)
      end
      if not __9wsr then
        __9wsr =         RunService.RenderStepped:Connect(function()
          if not __3kdo or not           __hmbk() then
            return
          end
          local __3eyn = __dibd.Character
          if not __3eyn then
            return
          end
          local __5n5u =           __3eyn:FindFirstChild("HumanoidRootPart")
          local __azsu =           __3eyn:FindFirstChildOfClass("Humanoid")
          if __5n5u and __azsu then
            local __5ivj =             __dibd:FindFirstChild("UserStates")
            if __5ivj then
              for __8zik, __1n32 in               pairs({"BrokenLegs", "Grabbed", "Pin"}) do
                local __3auz =                 __5ivj:FindFirstChild(__1n32)
                if __3auz then
                  __3auz.Value = false
                end
              end
            end
            local __cd0v =             __3eyn:FindFirstChild("Animate")
            if __cd0v then
              __cd0v.Parent = nil
            end
            if __5n5u.Velocity.Y < -5 and not             __8vqk:IsKeyDown(Enum.KeyCode.Space) then
                                          __azsu:ChangeState(Enum.HumanoidStateType.Climbing)
            end
          end
        end)
      end
    else
      if __4txn then
                        __4txn:Disconnect()
        __4txn = nil
      end
      if __9wsr then
                        __9wsr:Disconnect()
        __9wsr = nil
      end
      local __3eyn = __dibd.Character
      if __3eyn then
        local __cd0v =         __3eyn:FindFirstChild("Animate")
        if __cd0v and not __cd0v.Parent then
          __cd0v.Parent = __3eyn
        end
        local __azsu =         __3eyn:FindFirstChildOfClass("Humanoid")
        if __azsu then
                              __azsu:ChangeState(Enum.HumanoidStateType.Running)
        end
      end
    end
  end
  function __bxo7.setAutoJumpHeight(__3auz)
    __3sdy =     math.clamp(__3auz, 0, 90)
  end
      __dibd.CharacterRemoving:Connect(function()
    if __3kdo then
                  __bxo7.toggleManualJump(false)
    end
  end)
      __dibd.CharacterAdded:Connect(function()
            task.wait(0.5)
    if __3kdo then
                  __bxo7.toggleManualJump(true)
    end
  end)
end
do
  local __8f9r = false
  local __c7bn = {}
  local __e5uo = 200
  local function __emn3()
    if not     __hmbk() then
      return
    end
            pcall(function()
      __dibd.CameraMode = Enum.CameraMode.Classic
      __dibd.CameraMinZoomDistance = 0.5
      __dibd.CameraMaxZoomDistance = __e5uo
      local __8qmi = workspace.CurrentCamera
      if __8qmi then
        __8qmi.CameraType = Enum.CameraType.Custom
      end
    end)
  end
  function __bxo7.toggleThirdPerson(__6e02)
    if __6e02 and not     __hmbk() then
      __8f9r = true
      return
    end
    __8f9r = __6e02
    if __6e02 then
      if       next(__c7bn) then
        return
      end
                  __emn3()
      local __i6vc =             __dibd:GetPropertyChangedSignal("CameraMode"):Connect(function()
        if __8f9r then
                              __emn3()
        end
      end)
                  table.insert(__c7bn, __i6vc)
      local __1smo =             __dibd:GetPropertyChangedSignal("CameraMaxZoomDistance"):Connect(function()
        if __8f9r then
                              __emn3()
        end
      end)
                  table.insert(__c7bn, __1smo)
      local __8qmi = workspace.CurrentCamera
      if __8qmi then
        local __l888 =                 __8qmi:GetPropertyChangedSignal("CameraType"):Connect(function()
          if __8f9r then
                                    __emn3()
          end
        end)
                        table.insert(__c7bn, __l888)
      end
    else
      for __8zik, __3eyn in       ipairs(__c7bn) do
                        pcall(__3eyn.Disconnect, __3eyn)
      end
      __c7bn = {}
    end
  end
  function __bxo7.setThirdPersonZoom(__3auz)
    __e5uo =     math.clamp(__3auz, 1, 400)
    if __8f9r and     __hmbk() then
                  __emn3()
    end
  end
      __dibd.CharacterRemoving:Connect(function()
    if __8f9r then
      for __8zik, __3eyn in       ipairs(__c7bn) do
                        pcall(__3eyn.Disconnect, __3eyn)
      end
      __c7bn = {}
    end
  end)
      __dibd.CharacterAdded:Connect(function()
            task.wait(0.5)
    if __8f9r then
                  __emn3()
    end
  end)
end
do
  local __isdx = false
  local __b25y = nil
  local __1nu0 = nil
  local function __8376(__9091)
    __1nu0 = __9091
    local __5n5u =     __9091:FindFirstChild("Health")
    if __5n5u then
      if __b25y then
                        __b25y:Disconnect()
      end
      __b25y =       __5n5u.ChildAdded:Connect(function(child)
        if __isdx and         __hmbk() and child.Name == "ForceSelfDamage" then
                              pcall(function()
                                    child:FireServer(0)
          end)
        end
      end)
    end
  end
  function __bxo7.toggleNoFall(__1n32)
    if __1n32 and not     __hmbk() then
      __isdx = true
      return
    end
    __isdx = __1n32
    if __1n32 then
      local __3eyn = __dibd.Character
      if __3eyn then
                        __8376(__3eyn)
      end
    else
      if __b25y then
                        __b25y:Disconnect()
        __b25y = nil
        __1nu0 = nil
      end
    end
  end
      __dibd.CharacterRemoving:Connect(function()
    if __isdx then
      if __b25y then
                        __b25y:Disconnect()
        __b25y = nil
      end
    end
  end)
      __dibd.CharacterAdded:Connect(function(__9091)
            task.wait(0.5)
    if __isdx then
                  __8376(__9091)
    end
  end)
end
do
  local __isdx = false
  local __b25y = nil
  function __bxo7.toggleBackpack(__1n32)
    if __1n32 and not     __hmbk() then
      __isdx = true
      return
    end
    __isdx = __1n32
    if __1n32 then
      local __cdo0 =             __dibd:WaitForChild("PlayerGui"):FindFirstChild("BackpackGui")
      if __cdo0 then
        __cdo0.Enabled = true
        __b25y =                 __cdo0:GetPropertyChangedSignal("Enabled"):Connect(function()
          if __isdx and           __hmbk() and not __cdo0.Enabled then
            __cdo0.Enabled = true
          end
        end)
      end
    else
      if __b25y then
                        __b25y:Disconnect()
        __b25y = nil
      end
    end
  end
      __dibd.CharacterRemoving:Connect(function()
    if __isdx and __b25y then
                  __b25y:Disconnect()
      __b25y = nil
    end
  end)
      __dibd.CharacterAdded:Connect(function()
            task.wait(0.5)
    if __isdx then
                  __bxo7.toggleBackpack(true)
    end
  end)
end
do
  local __isdx = false
  local __ccli = nil
  local __ba6q =   game:GetService("Lighting")
  function __bxo7.toggleBright(__1n32)
    if __1n32 and not     __hmbk() then
      __isdx = true
      return
    end
    __isdx = __1n32
    if __1n32 then
      __ccli = {ClockTime = __ba6q.ClockTime, Ambient = __ba6q.Ambient, GlobalShadows = __ba6q.GlobalShadows, OutdoorAmbient = __ba6q.OutdoorAmbient}
      __ba6q.ClockTime = 14
      __ba6q.Ambient =       Color3.fromRGB(255, 255, 255)
      __ba6q.GlobalShadows = false
      __ba6q.OutdoorAmbient =       Color3.fromRGB(255, 255, 255)
    elseif __ccli then
      __ba6q.ClockTime = __ccli.ClockTime
      __ba6q.Ambient = __ccli.Ambient
      __ba6q.GlobalShadows = __ccli.GlobalShadows
      __ba6q.OutdoorAmbient = __ccli.OutdoorAmbient
    end
  end
      __dibd.CharacterRemoving:Connect(function()
    if __isdx then
      if __ccli then
        __ba6q.ClockTime = __ccli.ClockTime
      end
    end
  end)
      __dibd.CharacterAdded:Connect(function()
            task.wait(0.5)
    if __isdx then
                  __bxo7.toggleBright(true)
    end
  end)
end
do
  local __ainn = false
  local __7jt4 = nil
  local __78ra = false
  local __px4 = nil
  local function __5vuq()
            pcall(function()
      local __4w8a =       require(__dibd.PlayerScripts.PlayerModule.ControlModule)
      if __4w8a then
        __px4 = {Disable = __4w8a.Disable, Unbind = __4w8a.Unbind, Bind = __4w8a.Bind}
        __4w8a.Disable = function()
        end
        __4w8a.Unbind = function()
        end
        __4w8a.Bind = function()
        end
      end
    end)
  end
  local function __hlcn()
    if __px4 then
                  pcall(function()
        local __4w8a =         require(__dibd.PlayerScripts.PlayerModule.ControlModule)
        if __4w8a then
          __4w8a.Disable = __px4.Disable
          __4w8a.Unbind = __px4.Unbind
          __4w8a.Bind = __px4.Bind
        end
      end)
      __px4 = nil
    end
  end
      __8vqk.InputBegan:Connect(function(input, gp)
    if gp then
      return
    end
    if input.UserInputType == Enum.UserInputType.Keyboard then
      local __guq = input.KeyCode
      if __guq == Enum.KeyCode.W or __guq == Enum.KeyCode.A or __guq == Enum.KeyCode.S or __guq == Enum.KeyCode.D then
        __78ra = true
      end
    end
  end)
      __8vqk.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Keyboard then
      local __guq = input.KeyCode
      if __guq == Enum.KeyCode.W or __guq == Enum.KeyCode.A or __guq == Enum.KeyCode.S or __guq == Enum.KeyCode.D then
        __78ra = false
      end
    end
  end)
  function __bxo7.toggleHealMove(__1n32)
    if __1n32 and not     __hmbk() then
      __ainn = true
      return
    end
    if __1n32 then
      if __7jt4 then
        return
      end
      __ainn = true
                  __5vuq()
      __7jt4 =       RunService.Heartbeat:Connect(function()
        if not __ainn or not         __hmbk() then
          return
        end
        if __78ra then
          local __k2mu =           __dibd:FindFirstChild("PlayerGui")
          if __k2mu then
            local __cdo0 =             __k2mu:FindFirstChild("BackpackGui")
            if __cdo0 then
              __cdo0.Enabled = true
            end
          end
          local __9091 = __dibd.Character
          if __9091 then
            local __g2h4 =             __9091:FindFirstChildOfClass("Humanoid")
            local __2w43 =             __9091:FindFirstChild("HumanoidRootPart")
            if __g2h4 and __2w43 then
              __g2h4.WalkSpeed = 16
              __g2h4.AutoRotate = true
              __g2h4.Sit = false
              __2w43.Anchored = false
            end
          end
        end
      end)
    else
      __ainn = false
      __78ra = false
      if __7jt4 then
                        __7jt4:Disconnect()
        __7jt4 = nil
      end
                  __hlcn()
    end
  end
      __dibd.CharacterRemoving:Connect(function()
    if __ainn then
      __ainn = false
      if __7jt4 then
                        __7jt4:Disconnect()
        __7jt4 = nil
      end
                  __hlcn()
    end
  end)
      __dibd.CharacterAdded:Connect(function()
            task.wait(0.5)
    if __ainn then
                  __bxo7.toggleHealMove(true)
    end
  end)
end
do
  local __79h9 = false
  local __hi77 = nil
  function __bxo7.toggleRemoveBlood(__1n32)
    if __1n32 and not     __hmbk() then
      __79h9 = true
      return
    end
    __79h9 = __1n32
    if __1n32 then
      local __9091 = __dibd.Character
      if __9091 then
        local __5ivj =         __9091:FindFirstChild("UserStates")
        if __5ivj then
          local __e8e6 =           __5ivj:FindFirstChild("Infected")
          if __e8e6 and not __hi77 then
            __hi77 =                         __e8e6:GetPropertyChangedSignal("Value"):Connect(function()
              if __79h9 then
                __e8e6.Value = "0"
              end
            end)
            __e8e6.Value = "0"
          end
        end
      end
      if not __hi77 then
                        __dibd.CharacterAdded:Connect(function()
                              task.wait(0.5)
          if __79h9 then
                                    __bxo7.toggleRemoveBlood(true)
          end
        end)
      end
    else
      if __hi77 then
                        __hi77:Disconnect()
        __hi77 = nil
      end
    end
  end
      __dibd.CharacterRemoving:Connect(function()
    if __hi77 then
                  __hi77:Disconnect()
      __hi77 = nil
    end
  end)
end
do
  local __isdx = false
  local __b25y = nil
  local __t3o = {}
  local __3ww6 = 10
  local __a17i =   Color3.fromRGB(255, 80, 80)
  local __klpv = -1.5
  local function __fakh()
    local __embl =     workspace:FindFirstChild("Zombies")
    if not __embl then
      return {}
    end
    local __itsh = {}
    for __8zik, __f50r in     ipairs(    __embl:GetChildren()) do
      if       __f50r:IsA("Model") and       __f50r:GetAttribute("Type") == "Barrel" then
        __itsh[# __itsh + 1] = __f50r
      end
    end
    return __itsh
  end
  local function __9cl1(__173z)
    local __1n32 =     Instance.new("Part")
    __1n32.Shape = Enum.PartType.Ball
    __1n32.Size =     Vector3.new(__3ww6 * 2, __3ww6 * 2, __3ww6 * 2)
    __1n32.BrickColor =     BrickColor.new(__a17i)
    __1n32.Color = __a17i
    __1n32.Material = Enum.Material.Neon
    __1n32.Transparency = 0.6
    __1n32.Anchored = true
    __1n32.CanCollide = false
    __1n32.CanQuery = false
    __1n32.CanTouch = false
    __1n32.CastShadow = false
    __1n32.Position = __173z
    __1n32.Parent = workspace
    return __1n32
  end
  local function __3n7a()
    if not __isdx then
      for __8zik, __1n32 in       pairs(__t3o) do
        if __1n32 then
                              __1n32:Destroy()
        end
      end
      __t3o = {}
      return
    end
    local __jp1u =     __fakh()
    local __43ze = {}
    for __8zik, __f50r in     ipairs(__jp1u) do
      __43ze[__f50r] = true
      local __cz6z =       __f50r:FindFirstChild("HumanoidRootPart") or       __f50r:FindFirstChild("Head")
      if __cz6z then
        local __173z = __cz6z.Position +         Vector3.new(0, __klpv, 0)
        if __t3o[__f50r] then
          __t3o[__f50r].Position = __173z
        else
          __t3o[__f50r] =           __9cl1(__173z)
        end
      end
    end
    for __f50r, __1n32 in     pairs(__t3o) do
      if not __43ze[__f50r] then
                        __1n32:Destroy()
        __t3o[__f50r] = nil
      end
    end
  end
  function __bxo7.toggleBombRange(__1n32)
    __isdx = __1n32
    if __1n32 then
      if __b25y then
                        __b25y:Disconnect()
      end
      __b25y =       RunService.Heartbeat:Connect(__3n7a)
                  __3n7a()
    else
      if __b25y then
                        __b25y:Disconnect()
        __b25y = nil
      end
                  __3n7a()
    end
  end
end
do
  local __5cad = false
  local __2rvp = nil
  local function __240r()
    local __ipvf =     __dibd:FindFirstChild("Backpack")
    if not __ipvf then
      return nil
    end
    for __8zik, __9go4 in     ipairs({"Axe", "Pickaxe", "Baguette"}) do
      local __i4dn =       __ipvf:FindFirstChild(__9go4)
      if __i4dn then
        local __6vvk =         __i4dn:FindFirstChild("RemoteEvent")
        if __6vvk then
          return __6vvk
        end
      end
    end
    return nil
  end
  local function __bimw()
    while __5cad do
      local __6vvk =       __240r()
      if __6vvk then
                        pcall(function()
                              __6vvk:FireServer("BraceBlock")
        end)
      end
                  task.wait(0.2)
    end
    __2rvp = nil
  end
  function __bxo7.toggleAutoBrace(__1n32)
    __5cad = __1n32
    if __1n32 then
      if __2rvp then
                        task.cancel(__2rvp)
      end
      __2rvp =       task.spawn(__bimw)
    else
      if __2rvp then
                        task.cancel(__2rvp)
        __2rvp = nil
      end
    end
  end
end
do
  local __5cad = false
  local __2rvp = nil
  local __gsn8 = {"Axe", "Baguette", "Pickaxe"}
  local function __6rdf()
    local __foxj = __dibd.Character
    if not __foxj then
      return {}
    end
    local __itsh =     __foxj:FindFirstChild("HumanoidRootPart")
    if not __itsh then
      return {}
    end
    local __embl =     workspace:FindFirstChild("Zombies")
    if not __embl then
      return {}
    end
    local __ezqz = {}
    for __8zik, __f50r in     ipairs(    __embl:GetChildren()) do
      if       __f50r:IsA("Model") then
        local __aq27 =         __f50r:FindFirstChild("HumanoidRootPart") or         __f50r:FindFirstChild("Torso")
        if __aq27 and (__aq27.Position - __itsh.Position).Magnitude <= 6 then
                              table.insert(__ezqz, __f50r)
        end
      end
    end
    return __ezqz
  end
  local function __isey(__f50r)
    local __aq27 =     __f50r:FindFirstChild("HumanoidRootPart") or     __f50r:FindFirstChild("Torso")
    if not __aq27 then
      return
    end
    local __b8ud = __dibd.Character and     __dibd.Character:FindFirstChildOfClass("Tool")
    if not __b8ud then
      return
    end
    local __iixr =     __b8ud:FindFirstChild("RemoteEvent")
    if not __iixr then
      return
    end
            pcall(function()
                  __iixr:FireServer("BraceBlock")
                  __iixr:FireServer("StopBraceBlock")
                  __iixr:FireServer("FeedbackStun", __f50r, __aq27.Position)
    end)
  end
  local function __azc1()
    local __ipvf =     __dibd:FindFirstChild("Backpack")
    if not __ipvf then
      return nil
    end
    for __8zik, __9lgm in     ipairs(__gsn8) do
      local __c89v =       __ipvf:FindFirstChild(__9lgm)
      if __c89v and       __c89v:IsA("Tool") then
        return __c89v
      end
    end
    return nil
  end
  local function __24ch()
    while __5cad do
      local __dz4s =       __6rdf()
      if # __dz4s > 0 then
        local __b8ud =         __azc1()
        if __b8ud and __b8ud.Parent ~= __dibd.Character then
          __b8ud.Parent = __dibd.Character
                              task.wait(0.02)
        end
        for __8zik, __f50r in         ipairs(__dz4s) do
                              __isey(__f50r)
        end
      end
                  task.wait(0.3)
    end
    __2rvp = nil
  end
  function __bxo7.toggleElbowSave(__1n32)
    __5cad = __1n32
    if __1n32 then
      if __2rvp then
                        task.cancel(__2rvp)
      end
      __2rvp =       task.spawn(__24ch)
    else
      if __2rvp then
                        task.cancel(__2rvp)
        __2rvp = nil
      end
      local __foxj = __dibd.Character
      if __foxj then
        for __8zik, __9lgm in         ipairs(__gsn8) do
          local __c89v =           __foxj:FindFirstChild(__9lgm)
          if __c89v then
            __c89v.Parent = __dibd.Backpack
          end
        end
      end
    end
  end
end
do
  local __5cad = false
  local __f5hr = 10
  local __2rvp = nil
  local function __619k()
    local __ipb9 = __f5hr / 10
    local __5n5u =     math.clamp(16 * __ipb9, 5, 25)
    local __3auz =     math.clamp(5 * __ipb9, 2, 8)
    return __5n5u, __3auz
  end
  local function __8j90(__f50r)
    return     __f50r:GetAttribute("Type") == "Barrel" or     __f50r:FindFirstChild("Barrel")
  end
  local function __4npm()
    local __ezqz = {}
    local __embl =     workspace:FindFirstChild("Zombies")
    if not __embl then
      return __ezqz
    end
    for __8zik, __f50r in     ipairs(    __embl:GetChildren()) do
      if       __f50r:IsA("Model") and       __8j90(__f50r) then
        local __aq27 =         __f50r:FindFirstChild("HumanoidRootPart") or         __f50r:FindFirstChild("Torso") or         __f50r:FindFirstChild("Head")
        if __aq27 then
                              table.insert(__ezqz, __aq27.Position)
        end
      end
    end
    return __ezqz
  end
  function __bxo7.togglePushBarrel(__1n32)
    __5cad = __1n32
    if __1n32 then
      if __2rvp then
                        task.cancel(__2rvp)
      end
      __2rvp =       task.spawn(function()
        while __5cad do
          local __foxj = __dibd.Character
          if not __foxj then
                                    task.wait(0.05)
                        continue
          end
          local __itsh =           __foxj:FindFirstChild("HumanoidRootPart")
          if not __itsh then
                                    task.wait(0.05)
                        continue
          end
          local __10od, __3b69 =           __619k()
          for __8zik, __4p72 in           ipairs(          __4npm()) do
            local __1u03 = __itsh.Position.X - __4p72.X
            local __5v77 = __itsh.Position.Y - __4p72.Y
            local __ksp6 = __itsh.Position.Z - __4p72.Z
            local __c9fj = (__1u03 * __1u03 + __ksp6 * __ksp6) / (__10od * __10od) + (__5v77 * __5v77) / (__3b69 * __3b69) < 1
            if __c9fj then
              local __jf7z = __itsh.Position - __4p72
              if               math.abs(__jf7z.Y) > 3 then
                local __ap6a =                 Vector3.new(__jf7z.X, 0, __jf7z.Z)
                if __ap6a.Magnitude < 0.001 then
                  __ap6a =                   Vector3.new(1, 0, 0)
                else
                  __ap6a = __ap6a.Unit
                end
                __itsh.Velocity =                 Vector3.new(__ap6a.X * 85, __itsh.Velocity.Y, __ap6a.Z * 85)
              else
                local __dajg = __jf7z.Unit
                if __dajg.Magnitude < 0.001 then
                  __dajg =                   Vector3.new(1, 0, 0)
                end
                __itsh.Velocity = __dajg * 45 +                 Vector3.new(0, 15, 0)
              end
                            break
            end
          end
                              task.wait(0.05)
        end
      end)
    else
      if __2rvp then
                        task.cancel(__2rvp)
        __2rvp = nil
      end
    end
  end
  function __bxo7.setPushBarrelSize(__3auz)
    __f5hr = __3auz
  end
end
do
  local __jt77 = false
  local __eqhj = nil
  function __bxo7.toggleAntiGrab(__1n32)
    __jt77 = __1n32
    if __1n32 then
      if __eqhj then
        return
      end
      __eqhj =       RunService.Heartbeat:Connect(function()
        if not __jt77 then
          return
        end
        local __9091 = __dibd.Character
        if not __9091 then
          return
        end
        local __azsu =         __9091:FindFirstChild("Humanoid")
        if __azsu then
                              pcall(function()
                                    __azsu:Move(            Vector3.new(0, 100000, 0))
          end)
        end
      end)
    else
      if __eqhj then
                        __eqhj:Disconnect()
        __eqhj = nil
      end
    end
  end
end
do
  local __7wx1 = false
  local __iqan = nil
  function __bxo7.toggleSelfExtinguish(__1n32)
    __7wx1 = __1n32
    if __1n32 then
      if __iqan then
        return
      end
      __iqan =       task.spawn(function()
        while __7wx1 do
          local __9091 = __dibd.Character
          if __9091 then
            local __2q7o =             __9091:FindFirstChild("Torso") or             __9091:FindFirstChild("HumanoidRootPart")
            if __2q7o then
              local __1wqw =               __2q7o:FindFirstChild("Interact")
              if __1wqw then
                                                pcall(function()
                                                      __1wqw:FireServer()
                end)
              end
            end
          end
                              task.wait(0.1)
        end
        __iqan = nil
      end)
    else
      __iqan = nil
    end
  end
end
do
  local __ag0p = false
  local __jmiz = nil
  local __4ryn = {}
  local function __30gp(__cz6z)
    local __3eyn = __cz6z.Character
    if not __3eyn then
      return false
    end
    if     __3eyn:FindFirstChild("BurningStage") then
      return true
    end
    local __azsu =     __3eyn:FindFirstChildOfClass("Humanoid")
    if __azsu then
      local __214s, __3auz =       pcall(function()
        return __azsu.BurnState
      end)
      if __214s and __3auz and __3auz > 0 then
        return true
      end
    end
    return false
  end
  local function __2vis(__173z, __7x91)
    local __ezqz = {}
    local __83nn =     workspace:GetPartBoundsInRadius(__173z, __7x91)
    for __8zik, __12i1 in     ipairs(__83nn) do
      local __1wqw =       __12i1:FindFirstChild("Interact")
      if __1wqw and       __1wqw:IsA("RemoteEvent") then
        local __6tvl =         __1wqw:GetAttribute("DoNotInteract")
        if __6tvl ~= true then
                              table.insert(__ezqz, __1wqw)
        end
      end
    end
    return __ezqz
  end
  function __bxo7.toggleTeamFire(__1n32)
    __ag0p = __1n32
    if __1n32 then
      if __jmiz then
        return
      end
      __jmiz =       task.spawn(function()
        while __ag0p do
                              task.wait(0.3)
          for __8zik, __cz6z in           ipairs(          Players:GetPlayers()) do
            if not __ag0p then
                            break
            end
            if __cz6z == __dibd then
                            continue
            end
            if __4ryn[__cz6z.Name] and             tick() - __4ryn[__cz6z.Name] < 2 then
                            continue
            end
            if not             __30gp(__cz6z) then
                            continue
            end
            __4ryn[__cz6z.Name] =             tick()
            local __19bx = __dibd.Character
            local __cfmw = __19bx and             __19bx:FindFirstChild("HumanoidRootPart")
            if not __cfmw then
                            continue
            end
            local __8u1f =             __2vis(__cfmw.Position, 7)
            for __8zik, __1wqw in             ipairs(__8u1f) do
              for __8zik = 1, 3 do
                                                pcall(function()
                                                      __1wqw:FireServer()
                end)
                                                task.wait(0.1)
              end
            end
          end
        end
        __jmiz = nil
      end)
    else
      __jmiz = nil
    end
  end
end
do
  local __1uxc = false
  local __8wz9 = 3
  local __hno1 = nil
  local __a2l3 = false
  local __2xhj = nil
  local __gz0m = {}
  local __1rzx = false
  local __ka1u = 0
  local __i9hm = nil
  local __cr9x = {}
  local __bbne = 1.5
  local __al4f = 0.3
  local function __192a()
    local __3eyn = __dibd.Character
    return __3eyn and     __3eyn:FindFirstChild("HumanoidRootPart")
  end
  local function __3ah()
    local __2i2h =     workspace:FindFirstChild("Players")
    local __ipb9 = __2i2h and     __2i2h:FindFirstChild(__dibd.Name)
    local __1n32 = __ipb9 and     __ipb9:FindFirstChild("UserStates")
    local __cz6z = __1n32 and     __1n32:FindFirstChild("Pin")
    return __cz6z and     tostring(__cz6z.Value) ~= "None"
  end
  local function __ap96()
    __1rzx = false
    for __8zik, __c89v in     ipairs(__gz0m) do
                  task.cancel(__c89v)
    end
    __gz0m = {}
  end
  local function __5i9x()
    if __1rzx then
      return
    end
    __1rzx = true
    for __2hmm = 1, 10 do
                  table.insert(__gz0m,       task.spawn(function()
        while __1rzx do
          local __3eyn = __dibd.Character
          if __3eyn then
            local __5n5u =             __3eyn:FindFirstChildOfClass("Humanoid")
            if __5n5u then
                                          __5n5u:ChangeState(Enum.HumanoidStateType.Climbing)
            end
          end
                              task.wait()
        end
      end))
    end
  end
  local function __7k91()
    if __2xhj then
                  __2xhj:Disconnect()
      __2xhj = nil
    end
  end
  local function __dmy8(__173z)
            __7k91()
    __ka1u =     tick()
    __i9hm = __173z
    __2xhj =     RunService.RenderStepped:Connect(function()
      if not __a2l3 then
        return
      end
      local __f0cd =       __192a()
      if not __f0cd then
        return
      end
      local __f2e1 =       tick() - __ka1u
      if __f2e1 >= __bbne then
                        __ap96()
        __a2l3 = false
                        __7k91()
        return
      end
      local __icqg = __i9hm.Y +       math.sin(__f2e1 * math.pi * 2) * __al4f
      __f0cd.CFrame =       CFrame.new(      Vector3.new(__i9hm.X, __icqg, __i9hm.Z)) * (__f0cd.CFrame - __f0cd.CFrame.Position)
      __f0cd.Velocity = Vector3.zero
      __f0cd.AssemblyLinearVelocity = Vector3.zero
    end)
  end
  local function __1nf0()
    if __a2l3 then
                  __7k91()
                  __ap96()
      __a2l3 = false
    end
    __a2l3 = true
            __5i9x()
    while __1uxc and     __3ah() do
      local __f0cd =       __192a()
      if not __f0cd then
                break
      end
      local __5has = __f0cd.Position
                  pcall(function()
        __f0cd.CFrame =         CFrame.new(__5has +         Vector3.new(0, 5000000000, 0))
      end)
      while __1uxc and       __3ah() do
                        task.wait()
      end
      if not __1uxc then
                break
      end
                  pcall(function()
        __f0cd.CFrame =         CFrame.new(__5has +         Vector3.new(0, __8wz9, 0))
      end)
      local __2i2h =       workspace:FindFirstChild("Players")
      local __ipb9 = __2i2h and       __2i2h:FindFirstChild(__dibd.Name)
      local __1n32 = __ipb9 and       __ipb9:FindFirstChild("UserStates")
      local __cz6z = __1n32 and       __1n32:FindFirstChild("Pin")
      if __cz6z then
                        pcall(function()
          __cz6z.Value = "None"
        end)
      end
      if not       __3ah() then
                break
      end
    end
    if not __1uxc then
      __a2l3 = false
                  __ap96()
      return
    end
    if __8wz9 <= 0 then
      __a2l3 = false
                  __ap96()
      return
    end
    local __f0cd =     __192a()
    if __f0cd then
                  __dmy8(__f0cd.Position)
    else
      __a2l3 = false
                  __ap96()
    end
  end
  function __bxo7.toggleAutoEscape(__1n32)
    __1uxc = __1n32
    if __1n32 then
      if __hno1 then
        return
      end
      __hno1 =       task.spawn(function()
        local __1uq0 = false
        while true do
                              task.wait(0.05)
          if not __1uxc then
            __1uq0 = false
                        continue
          end
          local __csy6 =           __3ah()
          if __csy6 and not __1uq0 then
                                    task.spawn(__1nf0)
          end
          __1uq0 = __csy6
        end
      end)
    else
      __1uxc = false
      __a2l3 = false
      if __hno1 then
                        task.cancel(__hno1)
        __hno1 = nil
      end
                  __7k91()
                  __ap96()
    end
  end
  function __bxo7.setFloatHeight(__3auz)
    __8wz9 = __3auz
  end
end
_G._BFH_STOP_ALL = _G._BFH_STOP_ALL or {}
table.insert(_G._BFH_STOP_ALL, function()
      __bxo7.toggleCoordSpeed(false)
end)
table.insert(_G._BFH_STOP_ALL, function()
      __bxo7.toggleSpeed(false)
end)
table.insert(_G._BFH_STOP_ALL, function()
      __bxo7.toggleFly(false)
end)
table.insert(_G._BFH_STOP_ALL, function()
      __bxo7.toggleManualJump(false)
end)
table.insert(_G._BFH_STOP_ALL, function()
      __bxo7.toggleThirdPerson(false)
end)
table.insert(_G._BFH_STOP_ALL, function()
      __bxo7.toggleNoFall(false)
end)
table.insert(_G._BFH_STOP_ALL, function()
      __bxo7.toggleHealMove(false)
end)
table.insert(_G._BFH_STOP_ALL, function()
      __bxo7.toggleRemoveBlood(false)
end)
table.insert(_G._BFH_STOP_ALL, function()
      __bxo7.toggleBombRange(false)
end)
table.insert(_G._BFH_STOP_ALL, function()
      __bxo7.toggleElbowSave(false)
end)
table.insert(_G._BFH_STOP_ALL, function()
      __bxo7.togglePushBarrel(false)
end)
table.insert(_G._BFH_STOP_ALL, function()
      __bxo7.toggleAntiGrab(false)
end)
table.insert(_G._BFH_STOP_ALL, function()
      __bxo7.toggleSelfExtinguish(false)
end)
table.insert(_G._BFH_STOP_ALL, function()
      __bxo7.toggleTeamFire(false)
end)
table.insert(_G._BFH_STOP_ALL, function()
      __bxo7.toggleAutoEscape(false)
end)
table.insert(_G._BFH_STOP_ALL, function()
      __bxo7.toggleAutoBrace(false)
end)
_G.BFH.Core = _G.BFH.Core or {}
_G.BFH.Core.FEATURES = __bxo7
return __bxo7
