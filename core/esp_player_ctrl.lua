do
  local BFH={}
  BFH.DEBUG=false
  BFH.LOG_LEVEL=3
  local _rUJQTDVw={"OFF","ERROR","WARN","INFO","DEBUG","TRACE"}
  function BFH.log(l,m,msg)
    if BFH.DEBUG and l<=BFH.LOG_LEVEL then print("[BFH]["..tostring(m).."]["..(_rUJQTDVw[l+1]or"?").."] "..tostring(msg))end
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
  local __rjd = _G.BFH.Core.ESP or {}
  local Players =   game:GetService("Players")
  __rjd._playerEnabled = __rjd._playerEnabled or false
  __rjd._playerShowName = __rjd._playerShowName or false
  __rjd._playerShowHealth = __rjd._playerShowHealth or false
  __rjd._playerShowInfection = __rjd._playerShowInfection or false
  __rjd._playerShowClass = __rjd._playerShowClass or false
  __rjd._playerTeamCheck = __rjd._playerTeamCheck or false
  __rjd.pFX = __rjd.pFX or {}
  __rjd._classHighlights = __rjd._classHighlights or {}
  __rjd.CLASS_COLORS = {Officer =   Color3.fromRGB(80, 150, 255), Sapper =   Color3.fromRGB(255, 220, 80), Surgeon =   Color3.fromRGB(80, 220, 120), Chaplain =   Color3.fromRGB(180, 100, 255), LineInfantry =   Color3.fromRGB(255, 100, 100), Seaman =   Color3.fromRGB(255, 160, 60), Musician =   Color3.fromRGB(255, 140, 200), Piper =   Color3.fromRGB(255, 140, 200), Lancer =   Color3.fromRGB(200, 160, 100)}
  __rjd.CLASS_NAMES = {Officer = "军官", Sapper = "工兵", Surgeon = "医生", Chaplain = "牧师", LineInfantry = "步兵", Seaman = "水手", Musician = "乐手", Piper = "乐手", Lancer = "枪骑兵"}
  function __rjd._getPlayerTeam(__f1u4)
    if __f1u4.Team then
      return __f1u4.Team
    end
    local __fy8b =     __f1u4:GetAttribute("Team")
    if __fy8b then
      return __fy8b
    end
    local __e6bm = __f1u4.Character
    if __e6bm then
      local __2glo =       __e6bm:FindFirstChild("TeamTag") or       __e6bm:FindFirstChild("Team")
      if __2glo then
        return __2glo.Value
      end
    end
    return nil
  end
  local __br1k = {Piper = "Musician"}
  function __rjd._getPlayerClass(__f1u4)
    local __7q6o =     __f1u4:GetAttribute("CurrentClass")
    if not __7q6o then
      __7q6o =       __f1u4:GetAttribute("Class")
    end
    if __7q6o then
      return __br1k[__7q6o] or __7q6o
    end
    return nil
  end
  function __rjd._shouldHighlight(__f1u4)
    if __rjd._playerEnabled then
      return true
    end
    local __7q6o =     __rjd._getPlayerClass(__f1u4)
    if __7q6o and __rjd._classHighlights[__7q6o] then
      return true
    end
    return false
  end
  function __rjd._pGetColor(__f1u4)
    if __rjd._playerTeamCheck then
      local __hv2f =       __rjd._getPlayerTeam(Players.LocalPlayer)
      local __ig54 =       __rjd._getPlayerTeam(__f1u4)
      if __hv2f and __ig54 and __hv2f == __ig54 then
        return         Color3.fromRGB(100, 150, 255)
      end
      return       Color3.fromRGB(255, 100, 100)
    end
    local __7q6o =     __rjd._getPlayerClass(__f1u4)
    if __7q6o and __rjd.CLASS_COLORS[__7q6o] then
      return __rjd.CLASS_COLORS[__7q6o]
    end
    return     Color3.fromRGB(255, 100, 100)
  end
  function __rjd._getInfection(__f1u4)
    local __e6bm = __f1u4.Character
    if not __e6bm then
      return 0
    end
    local __e4jk =     __e6bm:FindFirstChild("UserStates")
    if __e4jk then
      local __j2gv =       __e4jk:FindFirstChild("Infected")
      if __j2gv and       __j2gv:IsA("NumberValue") then
        return         math.floor(__j2gv.Value + 0.5)
      end
    end
    local __j2gv =     __e6bm:GetAttribute("Infected") or     __f1u4:GetAttribute("Infected")
    if __j2gv then
      return       math.floor(      tonumber(__j2gv) + 0.5 or 0)
    end
    return 0
  end
  function __rjd.playerToggle(__ih0n)
    __rjd._playerEnabled = __ih0n
    if not __ih0n then
      local __hn33 = false
      for __fi3j, __tct in       pairs(__rjd._classHighlights) do
        if __tct then
          __hn33 = true
                    break
        end
      end
      if not __hn33 then
        for __f1u4 in         pairs(__rjd.pFX) do
          if __rjd._pDestroy then
                                    __rjd._pDestroy(__f1u4)
          end
        end
      end
    end
    if __rjd._pRefresh then
                  __rjd._pRefresh()
    end
  end
  function __rjd.playerName(__ih0n)
    __rjd._playerShowName = __ih0n
    if __rjd._pRefresh then
                  __rjd._pRefresh()
    end
  end
  function __rjd.playerHealth(__ih0n)
    __rjd._playerShowHealth = __ih0n
    if __rjd._pRefresh then
                  __rjd._pRefresh()
    end
  end
  function __rjd.playerInfection(__ih0n)
    __rjd._playerShowInfection = __ih0n
    if __rjd._pRefresh then
                  __rjd._pRefresh()
    end
  end
  function __rjd.playerClass(__ih0n)
    __rjd._playerShowClass = __ih0n
    if __rjd._pRefresh then
                  __rjd._pRefresh()
    end
  end
  function __rjd.playerTeam(__ih0n)
    __rjd._playerTeamCheck = __ih0n
    if __rjd._pRefresh then
                  __rjd._pRefresh()
    end
  end
  function __rjd.toggleClassHighlight(__8ajp, __ih0n)
    __rjd._classHighlights[__8ajp] = __ih0n
    if __rjd._pRefresh then
                  __rjd._pRefresh()
    end
  end
  _G.BFH.Core.ESP = __rjd
end
