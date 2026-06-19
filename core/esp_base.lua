do
  local BFH={}
  BFH.DEBUG=false
  BFH.LOG_LEVEL=3
  local _bjvIge={"OFF","ERROR","WARN","INFO","DEBUG","TRACE"}
  function BFH.log(l,m,msg)
    if BFH.DEBUG and l<=BFH.LOG_LEVEL then print("[BFH]["..tostring(m).."]["..(_bjvIge[l+1]or"?").."] "..tostring(msg))end
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
  local __2a9g = _G.BFH.Core.ESP or {}
  local Players =   game:GetService("Players")
  local __iohi = Players.LocalPlayer
  local function __39so(__b8nx, __l8hf)
    __l8hf = __l8hf or 0.5
    return     Color3.new(__b8nx.R + (1 - __b8nx.R) * __l8hf, __b8nx.G + (1 - __b8nx.G) * __l8hf, __b8nx.B + (1 - __b8nx.B) * __l8hf)
  end
  __2a9g.ZOMBIE_TYPES = {Axe = {name = "斧头僵尸", color =   Color3.fromRGB(0, 100, 255), highlightColor =   __39so(  Color3.fromRGB(0, 100, 255)), part = "Axe", render = "highlight", noName = false}, Eye = {name = "红眼", color =   Color3.fromRGB(255, 50, 50), highlightColor =   __39so(  Color3.fromRGB(255, 50, 50)), part = "Eye", render = "highlight", noName = false}, Sword = {name = "胸甲骑兵", color =   Color3.fromRGB(148, 0, 211), highlightColor =   __39so(  Color3.fromRGB(148, 0, 211)), part = "Sword", render = "highlight", noName = true}, Barrel = {name = "自爆", color =   Color3.fromRGB(255, 185, 15), highlightColor =   __39so(  Color3.fromRGB(255, 185, 15)), part = "Barrel", render = "highlight", noName = false}, FTorso = {name = "提灯人", color =   Color3.fromRGB(255, 255, 0), highlightColor =   __39so(  Color3.fromRGB(255, 255, 0)), part = "FTorso", render = "highlight", noName = false}, Normal = {name = "山伯乐", color =   Color3.fromRGB(144, 238, 144), highlightColor =   Color3.fromRGB(144, 238, 144), part = nil, render = "dot", noName = true}}
  __2a9g.zHL = __2a9g.zHL or {}
  __2a9g.zNM = __2a9g.zNM or {}
  __2a9g.zFX = __2a9g.zFX or {}
  __2a9g.trackedZombies = __2a9g.trackedZombies or   setmetatable({}, {__mode = "k"})
  function __2a9g._getZombieTypeKey(__4xq5)
    local __2psq =     __4xq5:GetAttribute("_ESPTYPE")
    if __2psq then
      return __2psq
    end
    local __553k
    if     __4xq5:FindFirstChild("Barrel", true) then
      __553k = "Barrel"
    elseif     __4xq5:FindFirstChild("Sword", true) then
      __553k = "Sword"
    elseif     __4xq5:FindFirstChild("Axe", true) then
      __553k = "Axe"
    elseif     __4xq5:FindFirstChild("Eye", true) then
      __553k = "Eye"
    elseif     __4xq5:FindFirstChild("FTorso", true) then
      __553k = "FTorso"
    end
    if not __553k then
      local __a6mp =       __4xq5:GetAttribute("Type")
      if __a6mp then
        if __a6mp == "Cuirassier" or __a6mp == "Sword" then
          __553k = "Sword"
        elseif __a6mp == "Barrel" then
          __553k = "Barrel"
        elseif __a6mp == "Fast" then
          __553k = "Eye"
        elseif __a6mp == "Igniter" then
          __553k = "FTorso"
        elseif __a6mp == "Sapper" or __a6mp == "Electrocutioner" then
          __553k = "Axe"
        else
          __553k = __a6mp
        end
      end
    end
    if not __553k then
      local __cd34 = __4xq5.Name
      if       __cd34:find("Barrel") then
        __553k = "Barrel"
      elseif       __cd34:find("Fast") then
        __553k = "Eye"
      elseif       __cd34:find("Igniter") then
        __553k = "FTorso"
      elseif       __cd34:find("Sapper") then
        __553k = "Axe"
      elseif       __cd34:find("Sword") or       __cd34:find("Cuirassier") then
        __553k = "Sword"
      end
    end
    __553k = __553k or "Normal"
            __4xq5:SetAttribute("_ESPTYPE", __553k)
    return __553k
  end
  function __2a9g._getRenderMethod(__553k)
    local __gpsv = __2a9g.ZOMBIE_TYPES[__553k]
    return __gpsv and __gpsv.render or "highlight"
  end
  function __2a9g._mkTag(__4xq5, __553k)
    local __gpsv = __2a9g.ZOMBIE_TYPES[__553k]
    if not __gpsv then
      return nil
    end
    local __g7xu = __4xq5.PrimaryPart or     __4xq5:FindFirstChild("Head") or     __4xq5:FindFirstChild("HumanoidRootPart")
    if not __g7xu then
      return nil
    end
    local __9mtu =     Instance.new("BillboardGui")
    __9mtu.Size =     UDim2.new(0, 120, 0, 30)
    __9mtu.StudsOffset =     Vector3.new(0, 2.5, 0)
    __9mtu.AlwaysOnTop = true
    __9mtu.Adornee = __g7xu
    __9mtu.Parent = __4xq5
    local __p1y =     Instance.new("TextLabel")
    __p1y.Size =     UDim2.new(1, 0, 1, 0)
    __p1y.BackgroundTransparency = 1
    __p1y.Text = __gpsv.__cd34
    __p1y.TextColor3 = __gpsv.highlightColor
    __p1y.TextTransparency = 0.3
    __p1y.Font = Enum.Font.GothamBold
    __p1y.TextSize = 14
    __p1y.TextStrokeTransparency = 0.5
    __p1y.TextStrokeColor3 =     Color3.fromRGB(0, 0, 0)
    __p1y.Parent = __9mtu
    return __9mtu
  end
  function __2a9g._mkHL(__atkb, __ixju)
    local __8l8g =     Instance.new("Highlight")
    __8l8g.FillColor = __ixju
    __8l8g.FillTransparency = 0.7
    __8l8g.OutlineColor = __ixju
    __8l8g.OutlineTransparency = 0.7
    __8l8g.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    __8l8g.Adornee = __atkb
    __8l8g.Parent = __atkb
    return __8l8g
  end
  function __2a9g._mkDot(__atkb, __ixju)
    local __gsvf =     __atkb:FindFirstChild("HumanoidRootPart") or     __atkb:FindFirstChild("Head") or     __atkb:FindFirstChild("Torso")
    if not __gsvf then
      return nil
    end
    local __9mtu =     Instance.new("BillboardGui")
    __9mtu.Name = "_ESP_DotUI"
    __9mtu.Size =     UDim2.new(0, 20, 0, 20)
    __9mtu.StudsOffset =     Vector3.new(0, 1.5, 0)
    __9mtu.AlwaysOnTop = true
    __9mtu.Adornee = __gsvf
    __9mtu.Parent = __atkb
    local __p1y =     Instance.new("TextLabel")
    __p1y.Size =     UDim2.new(1, 0, 1, 0)
    __p1y.BackgroundTransparency = 1
    __p1y.Text = "●"
    __p1y.TextColor3 = __ixju or     Color3.fromRGB(0, 255, 100)
    __p1y.TextSize = 16
    __p1y.Font = Enum.Font.GothamBold
    __p1y.TextStrokeTransparency = 0
    __p1y.TextStrokeColor3 =     Color3.fromRGB(0, 0, 0)
    __p1y.Parent = __9mtu
    return __9mtu
  end
  function __2a9g._remZ(__atkb)
    local __40in = __2a9g.zFX[__atkb]
    if __40in then
      if __40in.tag then
                        __40in.tag:Destroy()
      end
      if __40in.highlight then
                        __40in.highlight:Destroy()
      end
      if __40in.dot then
                        __40in.dot:Destroy()
      end
      __2a9g.zFX[__atkb] = nil
    end
    __2a9g.trackedZombies[__atkb] = nil
  end
  function __2a9g._clearZ()
    for __atkb in     pairs(__2a9g.zFX) do
                  __2a9g._remZ(__atkb)
    end
    for __atkb in     pairs(__2a9g.trackedZombies) do
      __2a9g.trackedZombies[__atkb] = nil
    end
  end
  function __2a9g.zombieToggle(__glix, __ew20)
    local __5x90 = {Axe = __2a9g.zombieToggle_Axe, Eye = __2a9g.zombieToggle_Eye, Sword = __2a9g.zombieToggle_Sword, Barrel = __2a9g.zombieToggle_Barrel, FTorso = __2a9g.zombieToggle_FTorso, Normal = __2a9g.zombieToggle_Normal}
    local __eijd = __5x90[__glix]
    if __eijd then
                  __eijd(__ew20)
    end
  end
  function __2a9g._updateZombie()
  end
  _G.BFH.Core.ESP = __2a9g
end
return _G.BFH.Core.ESP
