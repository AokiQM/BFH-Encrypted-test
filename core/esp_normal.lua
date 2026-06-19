do
  local BFH={}
  BFH.DEBUG=false
  BFH.LOG_LEVEL=3
  local _vHzowtQ={"OFF","ERROR","WARN","INFO","DEBUG","TRACE"}
  function BFH.log(l,m,msg)
    if BFH.DEBUG and l<=BFH.LOG_LEVEL then print("[BFH]["..tostring(m).."]["..(_vHzowtQ[l+1]or"?").."] "..tostring(msg))end
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
  local __antx = _G.BFH.Core.ESP
  if not __antx then
            warn("[山伯乐] 错误：未找到公共模块，请先注入 僵尸_公共模块.lua")
    return
  end
  local __6kdm = "Normal"
  function __antx.zombieToggle_Normal(__68oh)
    if __68oh then
      __antx.zHL[__6kdm] = true
    else
      __antx.zHL[__6kdm] = nil
    end
            __antx._updateZombie()
  end
  function __antx.zombieName_Normal(__68oh)
    if __68oh then
      __antx.zNM[__6kdm] = true
    else
      __antx.zNM[__6kdm] = nil
    end
            __antx._updateZombie()
  end
  _G.BFH.Core.ESP = __antx
end
