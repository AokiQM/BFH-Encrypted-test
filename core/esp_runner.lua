do
  local BFH={}
  BFH.DEBUG=false
  BFH.LOG_LEVEL=3
  local _PJSksMutoT={"OFF","ERROR","WARN","INFO","DEBUG","TRACE"}
  function BFH.log(l,m,msg)
    if BFH.DEBUG and l<=BFH.LOG_LEVEL then print("[BFH]["..tostring(m).."]["..(_PJSksMutoT[l+1]or"?").."] "..tostring(msg))end
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
  local __2bqy = _G.BFH.Core.ESP
  if not __2bqy then
            warn("[红眼] 错误：未找到公共模块，请先注入 僵尸_公共模块.lua")
    return
  end
  local __3bbs = "Eye"
  function __2bqy.zombieToggle_Eye(__i25r)
    if __i25r then
      __2bqy.zHL[__3bbs] = true
    else
      __2bqy.zHL[__3bbs] = nil
    end
            __2bqy._updateZombie()
  end
  function __2bqy.zombieName_Eye(__i25r)
    if __i25r then
      __2bqy.zNM[__3bbs] = true
    else
      __2bqy.zNM[__3bbs] = nil
    end
            __2bqy._updateZombie()
  end
  _G.BFH.Core.ESP = __2bqy
end
