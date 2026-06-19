do
  local BFH={}
  BFH.DEBUG=false
  BFH.LOG_LEVEL=3
  local _JaSgJ={"OFF","ERROR","WARN","INFO","DEBUG","TRACE"}
  function BFH.log(l,m,msg)
    if BFH.DEBUG and l<=BFH.LOG_LEVEL then print("[BFH]["..tostring(m).."]["..(_JaSgJ[l+1]or"?").."] "..tostring(msg))end
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
  local __kha1 = _G.BFH.Core.ESP
  if not __kha1 then
            warn("[自爆] 错误：未找到公共模块，请先注入 僵尸_公共模块.lua")
    return
  end
  local __4shs = "Barrel"
  function __kha1.zombieToggle_Barrel(__9wab)
    if __9wab then
      __kha1.zHL[__4shs] = true
    else
      __kha1.zHL[__4shs] = nil
    end
            __kha1._updateZombie()
  end
  function __kha1.zombieName_Barrel(__9wab)
    if __9wab then
      __kha1.zNM[__4shs] = true
    else
      __kha1.zNM[__4shs] = nil
    end
            __kha1._updateZombie()
  end
  _G.BFH.Core.ESP = __kha1
end
