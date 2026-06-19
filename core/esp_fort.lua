do
  local BFH={}
  BFH.DEBUG=false
  BFH.LOG_LEVEL=3
  local _fGXnph={"OFF","ERROR","WARN","INFO","DEBUG","TRACE"}
  function BFH.log(l,m,msg)
    if BFH.DEBUG and l<=BFH.LOG_LEVEL then print("[BFH]["..tostring(m).."]["..(_fGXnph[l+1]or"?").."] "..tostring(msg))end
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
  local __bhhi = _G.BFH.Core.ESP
  if not __bhhi then
            warn("[要塞绘制] 错误：未找到公共模块")
    return
  end
  local __8gn2 =   Color3.fromRGB(255, 255, 255)
  local __p24 = {["12 lb. Roundshots"] = true, Roundshot = true, Roundshots = true, Swab = true, swab = true}
  __bhhi.fortHL = __bhhi.fortHL or {}
  __bhhi.fortFX = __bhhi.fortFX or   setmetatable({}, {__mode = "k"})
  __bhhi.fortConns = __bhhi.fortConns or {}
  local function __f6au()
    for __dlfh, __ten in     ipairs(__bhhi.fortConns) do
                  pcall(__ten.Disconnect, __ten)
    end
    __bhhi.fortConns = {}
    for __e3fm, __l7nq in     pairs(__bhhi.fortFX) do
                  pcall(__l7nq.Destroy, __l7nq)
    end
    __bhhi.fortFX =     setmetatable({}, {__mode = "k"})
  end
  local function __aamz(__417s)
    if not __417s or not __417s.Parent then
      return
    end
    if __bhhi.fortFX[__417s] then
      return
    end
    local __l7nq =     Instance.new("Highlight")
    __l7nq.FillColor = __8gn2
    __l7nq.FillTransparency = 0.7
    __l7nq.OutlineColor = __8gn2
    __l7nq.OutlineTransparency = 0.7
    __l7nq.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    __l7nq.Adornee = __417s
    __l7nq.Parent = __417s
    __bhhi.fortFX[__417s] = __l7nq
  end
  local function __am9e(__k8ij)
    for __dlfh, __417s in     ipairs(    __k8ij:GetDescendants()) do
      if __p24[__417s.Name] then
                        __aamz(__417s)
      end
    end
  end
  local function __9gnu()
    return     workspace:FindFirstChild("Vardohus Fortress") ~= nil or     workspace:FindFirstChild("Vardohus") ~= nil
  end
  local function __6rfh()
            __f6au()
    local __k8ij =     workspace:FindFirstChild("Vardohus Fortress") or     workspace:FindFirstChild("Vardohus")
    if not __k8ij then
                  print("[要塞绘制] 非要塞地图，跳过")
      return
    end
    local __8at2 =     game:GetService("Players").LocalPlayer
    local function __51pp()
                  __am9e(__k8ij)
      local __a3xc =       __k8ij.DescendantAdded:Connect(function(desc)
        if __p24[desc.Name] then
                              task.wait()
                              __aamz(desc)
        end
      end)
                  table.insert(__bhhi.fortConns, __a3xc)
      local __1z2s =       __8at2.CharacterAdded:Connect(function(char)
                        task.wait(0.5)
        for __dlfh, __k3u1 in         ipairs(        char:GetDescendants()) do
          if __p24[__k3u1.Name] then
                                    __aamz(__k3u1)
          end
        end
      end)
                  table.insert(__bhhi.fortConns, __1z2s)
      if __8at2.Character then
        for __dlfh, __k3u1 in         ipairs(        __8at2.Character:GetDescendants()) do
          if __p24[__k3u1.Name] then
                                    __aamz(__k3u1)
          end
        end
      end
    end
    if __8at2.Character then
                  __51pp()
    else
                  __8at2.CharacterAdded:Connect(function()
                        task.wait(1)
                        __51pp()
      end)
    end
  end
  function __bhhi.toggleFortDraw(__ho1i, __a85j)
    __bhhi.fortHL[__ho1i] = __a85j
    local __hm92 = false
    for __dlfh, __f22b in     pairs(__bhhi.fortHL) do
      if __f22b then
        __hm92 = true
                break
      end
    end
    if __hm92 then
                  __6rfh()
    else
                  __f6au()
    end
  end
  function __bhhi.fortStart()
            __6rfh()
  end
  function __bhhi.fortStop()
            __f6au()
  end
  function __bhhi.toggleCannonSupplies(__a85j)
            __bhhi.toggleFortDraw("Supplies", __a85j)
  end
  _G.BFH.Core.ESP = __bhhi
      print("[要塞绘制] 纯事件驱动版 | 自动地图检测")
end
