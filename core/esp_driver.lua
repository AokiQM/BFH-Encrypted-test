do
  local BFH={}
  BFH.DEBUG=false
  BFH.LOG_LEVEL=3
  local _dsbTmMG={"OFF","ERROR","WARN","INFO","DEBUG","TRACE"}
  function BFH.log(l,m,msg)
    if BFH.DEBUG and l<=BFH.LOG_LEVEL then print("[BFH]["..tostring(m).."]["..(_dsbTmMG[l+1]or"?").."] "..tostring(msg))end
  end
  function BFH.time(m,n,f)
    local s=os.clock();local ok,r=pcall(f);local c=(os.clock()-s)*1000
    if ok then BFH.log(3,m,n.." OK ("..string.format("%.1f",c).."ms)")
    else BFH.log(1,m,n.." FAIL: "..tostring(r).." ("..string.format("%.1f",c).."ms)")end
    return ok,r
  end
  local _C=_G.BFH.Core;_G.BFH=BFH;_G.BFH.Core=_C or {}
end
do
  local __5en9 = _G.BFH.Core.ESP
  if not __5en9 then
            warn("[僵尸监听] 错误：未找到公共模块")
    return
  end
  local Players =   game:GetService("Players")
  local __bz4l = Players.LocalPlayer
  local __46jh = "Camera"
  local function __5kxl(__uqp)
    return     __uqp:IsA("Model") and     __uqp.Name:find("Zombie")
  end
  local function __f3sq(__3vx9)
    if not __3vx9.Parent then
      return
    end
    if not     __5kxl(__3vx9) then
      return
    end
    local __egp1 =     __5en9._getZombieTypeKey(__3vx9)
    local __a5s0 = __5en9.zHL[__egp1]
    local __lbvh =     __5en9._getRenderMethod(__egp1)
    if __a5s0 then
      if not __5en9.zFX[__3vx9] then
        __5en9.zFX[__3vx9] = {}
      end
      local __5u3w = __5en9.zFX[__3vx9]
      local __k2o7 = __5en9.ZOMBIE_TYPES[__egp1]
      local __ds4k = __k2o7 and __k2o7.highlightColor
      if __lbvh == "dot" then
        if not __5u3w.dot then
          __5u3w.dot =           __5en9._mkDot(__3vx9, __ds4k)
        end
      else
        if not __5u3w.highlight then
          __5u3w.highlight =           __5en9._mkHL(__3vx9, __ds4k)
        end
      end
    else
      local __5u3w = __5en9.zFX[__3vx9]
      if __5u3w then
        if __5u3w.dot then
                              __5u3w.dot:Destroy()
          __5u3w.dot = nil
        end
        if __5u3w.highlight then
                              __5u3w.highlight:Destroy()
          __5u3w.highlight = nil
        end
        if not __5u3w.tag then
          __5en9.zFX[__3vx9] = nil
        end
      end
    end
  end
  local function __j8xt(__3vx9)
    if not     __5kxl(__3vx9) then
      return false
    end
    if __5en9.trackedZombies[__3vx9] then
      return true
    end
            __5en9._getZombieTypeKey(__3vx9)
    __5en9.trackedZombies[__3vx9] = true
            __f3sq(__3vx9)
    if __5en9._onTrackedChange then
                  __5en9._onTrackedChange()
    end
    return true
  end
  local function __a4sx(__3vx9)
    if not __5en9.trackedZombies[__3vx9] then
      return
    end
            __5en9._remZ(__3vx9)
    if __5en9._onTrackedChange then
                  __5en9._onTrackedChange()
    end
  end
  function __5en9._refreshZombies()
    for __3vx9 in     pairs(__5en9.trackedZombies) do
                  __f3sq(__3vx9)
    end
  end
  function __5en9._updateZombie()
            __5en9._refreshZombies()
  end
  local function __6d4i(__hmob)
    for __a5g3, __3vx9 in     ipairs(    __hmob:GetDescendants()) do
      if       __5kxl(__3vx9) then
                        __j8xt(__3vx9)
      end
    end
            __hmob.DescendantAdded:Connect(function(desc)
                  task.wait()
      if       __5kxl(desc) then
                        __j8xt(desc)
      end
    end)
            __hmob.DescendantRemoving:Connect(function(desc)
      if       __5kxl(desc) then
                        __a4sx(desc)
      end
    end)
  end
  local __hmob =   workspace:FindFirstChild(__46jh)
  if __hmob then
            __6d4i(__hmob)
  else
            workspace.ChildAdded:Connect(function(__ds4k)
      if __ds4k.Name == __46jh then
                        __6d4i(__ds4k)
      end
    end)
  end
  _G.BFH.Core.ESP = __5en9
      print("[僵尸监听] 纯事件驱动版 | 零心跳·零轮询·零定时器")
end
