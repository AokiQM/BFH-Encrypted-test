do
  local BFH={}
  BFH.DEBUG=false
  BFH.LOG_LEVEL=3
  local _BqJDNBdnrY={"OFF","ERROR","WARN","INFO","DEBUG","TRACE"}
  function BFH.log(l,m,msg)
    if BFH.DEBUG and l<=BFH.LOG_LEVEL then print("[BFH]["..tostring(m).."]["..(_BqJDNBdnrY[l+1]or"?").."] "..tostring(msg))end
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
  local __gfkq = _G.BFH.Core.ESP
  if not __gfkq then
            warn("[提灯人] 错误：未找到公共模块，请先注入 僵尸_公共模块.lua")
    return
  end
  local __7y8b = "FTorso"
  function __gfkq.zombieToggle_FTorso(__5r70)
    if __5r70 then
      __gfkq.zHL[__7y8b] = true
    else
      __gfkq.zHL[__7y8b] = nil
    end
            __gfkq._updateZombie()
  end
  function __gfkq.zombieName_FTorso(__5r70)
    if __5r70 then
      __gfkq.zNM[__7y8b] = true
    else
      __gfkq.zNM[__7y8b] = nil
    end
            __gfkq._updateZombie()
  end
  _G.BFH.Core.ESP = __gfkq
end
