do
  local BFH={}
  BFH.DEBUG=false
  BFH.LOG_LEVEL=3
  local __vq_o={"OFF","ERROR","WARN","INFO","DEBUG","TRACE"}
  function BFH.log(l,m,msg)
    if BFH.DEBUG and l<=BFH.LOG_LEVEL then print("[BFH]["..tostring(m).."]["..(__vq_o[l+1]or"?").."] "..tostring(msg))end
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
  local __bzxi = _G.BFH.Core.ESP
  if not __bzxi then
            warn("[胸甲骑兵] 错误：未找到公共模块，请先注入 僵尸_公共模块.lua")
    return
  end
  local __d7qx = "Sword"
  function __bzxi.zombieToggle_Sword(__iiuq)
    if __iiuq then
      __bzxi.zHL[__d7qx] = true
    else
      __bzxi.zHL[__d7qx] = nil
    end
            __bzxi._updateZombie()
  end
  function __bzxi.zombieName_Sword(__iiuq)
    if __iiuq then
      __bzxi.zNM[__d7qx] = true
    else
      __bzxi.zNM[__d7qx] = nil
    end
            __bzxi._updateZombie()
  end
  _G.BFH.Core.ESP = __bzxi
end
