do
  local BFH={}
  BFH.DEBUG=false
  BFH.LOG_LEVEL=3
  local _SsHgSsxD={"OFF","ERROR","WARN","INFO","DEBUG","TRACE"}
  function BFH.log(l,m,msg)
    if BFH.DEBUG and l<=BFH.LOG_LEVEL then print("[BFH]["..tostring(m).."]["..(_SsHgSsxD[l+1]or"?").."] "..tostring(msg))end
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
  if _G._BFH_RENDER_CONN then
            _G._BFH_RENDER_CONN:Disconnect()
    _G._BFH_RENDER_CONN = nil
  end
  local __icp4 =   game:GetService("Players").LocalPlayer and     game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui")
  if __icp4 then
    local __e4yd =     __icp4:FindFirstChild("BFH_PlayerTags")
    if __e4yd then
                  __e4yd:Destroy()
    end
  end
  local __6sx5 = _G.BFH.Core.ESP
  if not __6sx5 then
            warn("[玩家绘制] 错误：未找到核心控制模块")
    return
  end
  local Players =   game:GetService("Players")
  local RunService =   game:GetService("RunService")
  local __6z9u = Players.LocalPlayer
  function __6sx5._pDestroy(__jck1)
    local __ic7s = __6sx5.pFX[__jck1]
    if __ic7s then
      if __ic7s.hl then
                        __ic7s.hl:Destroy()
      end
      if __ic7s.bg then
                        __ic7s.bg:Destroy()
      end
      if __ic7s.infConn then
                        __ic7s.infConn:Disconnect()
        __ic7s.infConn = nil
      end
      if __ic7s.hpConn then
                        __ic7s.hpConn:Disconnect()
        __ic7s.hpConn = nil
      end
      __6sx5.pFX[__jck1] = nil
    end
  end
  function __6sx5._pUpdate(__jck1)
    local __bvel = __jck1.Character
    if not __bvel or __jck1 == __6z9u then
                  __6sx5._pDestroy(__jck1)
      return
    end
    local __5lh1 =     __bvel:FindFirstChild("Head")
    local __amoj =     __bvel:FindFirstChild("HumanoidRootPart")
    if not __5lh1 then
      return
    end
    local __8f38 =     __6sx5._shouldHighlight(__jck1)
    local __2gy1 = __6sx5._playerShowName
    local __6c76 = __6sx5._playerShowHealth
    local __837v = __6sx5._playerShowInfection
    local __hm13 = __6sx5._playerShowClass
    local __bwhj = __2gy1 or __6c76 or __837v or __hm13
    local __ayve =     __6sx5._pGetColor(__jck1)
    if __8f38 then
      if not __6sx5.pFX[__jck1] then
        __6sx5.pFX[__jck1] = {}
      end
      local __ic7s = __6sx5.pFX[__jck1]
      if not __ic7s.hl then
        local __gncy =         Instance.new("Highlight")
        __gncy.Adornee = __bvel
        __gncy.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        __gncy.FillTransparency = 0.3
        __gncy.OutlineTransparency = 0.3
        __gncy.Parent = __bvel
        __ic7s.hl = __gncy
      end
      local __ic7s = __6sx5.pFX[__jck1]
      __ic7s.hl.FillColor = __ayve
      __ic7s.hl.OutlineColor = __ayve
    else
      if __6sx5.pFX[__jck1] and __6sx5.pFX[__jck1].hl then
                        __6sx5.pFX[__jck1].hl:Destroy()
        __6sx5.pFX[__jck1].hl = nil
      end
    end
    if __bwhj then
      if not __6sx5.pFX[__jck1] then
        __6sx5.pFX[__jck1] = {}
      end
      local __ic7s = __6sx5.pFX[__jck1]
      if not __ic7s.bg then
        local __fi4r =         Instance.new("BillboardGui")
        __fi4r.Name = "PlayerTag_" .. __jck1.Name
        __fi4r.Size =         UDim2.new(0, 200, 0, 50)
        __fi4r.StudsOffset =         Vector3.new(0, 2.8, 0)
        __fi4r.AlwaysOnTop = true
        __fi4r.MaxDistance = 999
        __fi4r.Adornee = __5lh1
        __fi4r.Parent = __bvel
        __ic7s.bg = __fi4r
      end
      local __fi4r = __ic7s.bg
      __fi4r.Adornee = __5lh1
      for __7j7c, __jeqk in       ipairs(      __fi4r:GetChildren()) do
                        __jeqk:Destroy()
      end
      local __8xhf = 12
      local __el8g = __8xhf + 4
      if __6c76 or __837v or __hm13 then
        if __837v then
          local __cupq =           __6sx5._getInfection(__jck1)
          local __hqkz =           Instance.new("TextLabel")
          __hqkz.Size =           UDim2.new(0.5, -1, 0, __el8g)
          local __9b3p = #           tostring(__cupq)
          local __k9x4 = 0.4
          if __9b3p <= 1 then
            __k9x4 = 0.425
          elseif __9b3p >= 3 then
            __k9x4 = 0.35
          end
          __hqkz.Position =           UDim2.new(__k9x4, 0, 0, 2)
          __hqkz.BackgroundTransparency = 1
          __hqkz.Text =           tostring(__cupq)
          __hqkz.TextColor3 =           Color3.fromRGB(255, 80, 80)
          __hqkz.TextSize = __8xhf
          __hqkz.Font = Enum.Font.GothamBold
          __hqkz.TextStrokeTransparency = 0
          __hqkz.TextStrokeColor3 =           Color3.fromRGB(0, 0, 0)
          __hqkz.TextXAlignment = Enum.TextXAlignment.Left
          __hqkz.Name = "_INF"
          __hqkz.Parent = __fi4r
          __ic7s.infLabel = __hqkz
          local __iaev =           __bvel:FindFirstChild("UserStates")
          if __iaev then
            local __axsl =             __iaev:FindFirstChild("Infected")
            if __axsl and             __axsl:IsA("NumberValue") then
              if __ic7s.infConn then
                                                __ic7s.infConn:Disconnect()
              end
              __ic7s.infConn =               __axsl.Changed:Connect(function(val)
                if __ic7s.infLabel then
                  local __1rcm =                   math.floor(val + 0.5)
                  __ic7s.infLabel.Text =                   tostring(__1rcm)
                  local __cqul = #                   tostring(__1rcm)
                  local __8qzb = 0.4
                  if __cqul <= 1 then
                    __8qzb = 0.425
                  elseif __cqul >= 3 then
                    __8qzb = 0.35
                  end
                  __ic7s.infLabel.Position =                   UDim2.new(__8qzb, 0, 0, 2)
                end
              end)
            end
          end
        end
        if __hm13 then
          local __c1pd =           __6sx5._getPlayerClass(__jck1)
          local __cl3z = __c1pd and __6sx5.CLASS_NAMES and __6sx5.CLASS_NAMES[__c1pd]
          if __cl3z then
            local __5teo = __c1pd and __6sx5.CLASS_COLORS and __6sx5.CLASS_COLORS[__c1pd] or             Color3.fromRGB(200, 200, 255)
            local __ihce =             Instance.new("TextLabel")
            __ihce.Size =             UDim2.new(1, 0, 0, __el8g)
            __ihce.Position =             UDim2.new(0, 0, 0, 2)
            __ihce.BackgroundTransparency = 1
            __ihce.Text = __cl3z
            __ihce.TextColor3 = __5teo
            __ihce.TextSize = __8xhf
            __ihce.Font = Enum.Font.GothamBold
            __ihce.TextStrokeTransparency = 0
            __ihce.TextStrokeColor3 =             Color3.fromRGB(0, 0, 0)
            __ihce.TextXAlignment = Enum.TextXAlignment.Center
            __ihce.Parent = __fi4r
          end
        end
        if __6c76 then
          local __a037 =           __bvel:FindFirstChildOfClass("Humanoid")
          local __dtp5 = __a037 and           math.floor(__a037.Health / __a037.MaxHealth * 100) or 100
          local __blpt =           Instance.new("TextLabel")
          __blpt.Size =           UDim2.new(0.5, -1, 0, __el8g)
          __blpt.Position =           UDim2.new(0.55, 0, 0, 2)
          __blpt.BackgroundTransparency = 1
          __blpt.Text =           tostring(__dtp5)
          __blpt.TextColor3 =           Color3.fromRGB(120, 255, 120)
          __blpt.TextSize = __8xhf
          __blpt.Font = Enum.Font.GothamBold
          __blpt.TextStrokeTransparency = 0
          __blpt.TextStrokeColor3 =           Color3.fromRGB(0, 0, 0)
          __blpt.TextXAlignment = Enum.TextXAlignment.Left
          __blpt.Name = "_HP"
          __blpt.Parent = __fi4r
          __ic7s.hpLabel = __blpt
          __ic7s.huRef = __a037
          if __a037 then
            if __ic7s.hpConn then
                                          __ic7s.hpConn:Disconnect()
            end
            __ic7s.hpConn =             __a037.HealthChanged:Connect(function()
              if __ic7s.hpLabel and __a037.Parent then
                __ic7s.hpLabel.Text =                 tostring(                math.floor(__a037.Health / __a037.MaxHealth * 100))
              end
            end)
          end
        end
      end
      if __2gy1 then
        local __ixgr =         Instance.new("TextLabel")
        __ixgr.Size =         UDim2.new(1, -10, 0, __el8g)
        __ixgr.Position =         UDim2.new(0, 5, 0, __el8g)
        __ixgr.BackgroundTransparency = 1
        __ixgr.Text = __jck1.Name
        __ixgr.TextColor3 = __ayve
        __ixgr.TextSize = __8xhf
        __ixgr.Font = Enum.Font.GothamBold
        __ixgr.TextStrokeTransparency = 0
        __ixgr.TextStrokeColor3 =         Color3.fromRGB(0, 0, 0)
        __ixgr.TextXAlignment = Enum.TextXAlignment.Center
        __ixgr.Parent = __fi4r
      end
      local __2sps = (__6c76 or __837v or __hm13) and 2 or 1
      local __fa0a = 2 + __el8g
      if __2gy1 then
        __fa0a =         math.max(__fa0a, __el8g + __el8g)
      end
      __fi4r.Size =       UDim2.new(0, 200, 0, __fa0a + 4)
    else
      if __6sx5.pFX[__jck1] and __6sx5.pFX[__jck1].bg then
                        __6sx5.pFX[__jck1].bg:Destroy()
        __6sx5.pFX[__jck1].bg = nil
      end
    end
  end
  function __6sx5._pRefresh()
    for __7j7c, __jck1 in     ipairs(    Players:GetPlayers()) do
                  __6sx5._pUpdate(__jck1)
    end
  end
  _G.BFH.Core.ESP = __6sx5
end
