do
  local BFH={}
  BFH.DEBUG=false
  BFH.LOG_LEVEL=3
  local _dbqPxWu={"OFF","ERROR","WARN","INFO","DEBUG","TRACE"}
  function BFH.log(l,m,msg)
    if BFH.DEBUG and l<=BFH.LOG_LEVEL then print("[BFH]["..tostring(m).."]["..(_dbqPxWu[l+1]or"?").."] "..tostring(msg))end
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
  local __ghcl = _G.BFH.Core.ESP
  if not __ghcl then
            warn("[斧头僵尸] 错误：未找到公共模块，请先注入 僵尸_公共模块.lua")
    return
  end
  local __2q76 = "Axe"
  function __ghcl.zombieToggle_Axe(__48yl)
    if __48yl then
      __ghcl.zHL[__2q76] = true
    else
      __ghcl.zHL[__2q76] = nil
    end
            __ghcl._updateZombie()
  end
  function __ghcl.zombieName_Axe(__48yl)
    if __48yl then
      __ghcl.zNM[__2q76] = true
    else
      __ghcl.zNM[__2q76] = nil
    end
            __ghcl._updateZombie()
  end
  _G.BFH.Core.ESP = __ghcl
end
